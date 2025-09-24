Prerequisites for Installing XNAT
================================

XNAT 1.8 requires the following services:

    Java 8 JRE  or JDK
    Apache Tomcat 8.5 or later
    PostgreSQL 10 or later

The particular versions required and any custom configuration is detailed in the following sections. You may also want to consider installing a reverse proxy for URL management.

Running XNAT on Windows is no longer supported and recent versions of XNAT have not been tested on Windows. We recommend either using a different operating system or running XNAT in a Vagrant virtual machine.
Notes on Installing Java 8

XNAT 1.8 was developed using Java 8:

    Because the code was compiled to Java 8-compatible byte code and uses features in the Java language and standard libraries that are only available in Java 8 or later, XNAT will not run with Java 7 or earlier
    XNAT has known issues with versions of Java later than 8 and no Java version after 8 is currently supported

You can download Java 8 for Windows, OS X, and most Linux platforms from a number of sources:

    Oracle Java SE Development Kit 8 Downloads page (Oracle introduced licensing requirements in April of 2019, which may prevent some organizations from being able to use their Java implementation)
    AdoptOpenJDK
    Azul Zulu OpenJDK
    Most Linux platforms using the appropriate package manager application:
        apt for Debian-based platforms, including Debian, Ubuntu, Linux Mint
        yum for Fedora/RHEL-based platforms, including Fedora, Red Hat, and CentOS
    SDKMAN is a tool for managing a variety of software development tools, including JDKs

The XNAT team runs a number of deployments using OpenJDK 8. Some testing and development work has been done using the Zulu JDK from Azul as well.

Notes on Installing and Configuring Apache Tomcat

XNAT was developed and tested exclusively on Tomcat 7 up through the 1.8.1 release. Apache announced the end of life for Tomcat 7 on March 31, 2021. XNAT 1.8.1 and earlier can be easily modified to run on Tomcat 8.5 and later with a simple change in one of the XNAT configuration files. See Running XNAT on Tomcat 8.5 and Later for details.

Beginning with XNAT 1.8.2, Tomcat 9.0 is the default server environment for development and testing. See the warning at the top of Running XNAT on Tomcat 8.5 and Later for more information on why we recommend Tomcat 9.0 over 8.5.

There are a few configuration changes to prepare Tomcat for XNAT 1.8. We cover the required step of defining xnat.home for Tomcat in the XNAT Installation Guide. These others are optional.

    Set other JVM options
    Change the Tomcat service user and group
    Install the Tomcat manager application

This documentation refers to the CATALINA_OPTS variable when configuring Tomcat. You may find that your version of Tomcat doesn't recognize this variable when set in the Tomcat configuration file, e.g. /etc/default/tomcat9. In that case, you have a few options:

    Replace references to CATALINA_OPTS with JAVA_OPTS
    Export CATALINA_OPTS in the Tomcat configuration file, either by adding export to the first reference or add export CATALINA_OPTS  at the end of the configuration file
    If your system uses systemd, you can override the default unit configuration for Tomcat to add CATALINA_OPTS to the service environment (see Overriding Tomcat configuration on systemd for more information)

Locating the Primary Tomcat Configuration File

Make changes to your Tomcat configuration by modifying the primary Tomcat configuration file:

    For Debian and Ubuntu systems, this is usually located in /etc/default/tomcat9.
    Fedora, Red Hat, CentOS, and similar systems no longer provide Tomcat through their yum repositories!
    OS X doesn't have the same standard method of configuring properties for Tomcat as a service. Generally, you can create a file in the bin folder for your Tomcat installation named setenv.sh. You should also make the file executable with the command chmod +x setenv.sh . You can modify this file in the same way as the configuration files for the Linux platforms.

Setting Max Heap Size

The XNAT web application may not run on Tomcat without enough memory allocated to it. However, the way in which you set memory limits will differ based on your platform, and what kind of load you expect your XNAT to be under. For example, a typical XNAT 1.8 VM running on Ubuntu 20.04, 1 GB is the very minimum that should be allocated for max heap space.

Additionally, the method in which you allocate this memory may differ depending on your OS. In an XNAT VM running on Ubuntu, for example, we modify CATALINA_OPTS rather than JAVA_OPTS because CATALINA_OPTS is only invoked during start and run operations. Here are the relevant settings in that environment.
CODE

# Set JAVA_OPTS for Java options for ALL commands in Tomcat, including service
# start, stop, and run commands.
JAVA_OPTS="-Djava.awt.headless=true"

# Set CATALINA_OPTS for Tomcat-specific operations, mainly service start and run.
CATALINA_OPTS="-Xms512m -Xmx1g -XX:+UseConcMarkSweepGC -XX:-OmitStackTraceInFastThrow"

Note the -Xmx1g setting, which sets a max heap size of 1 GB.

You should usually allocate at least 4 GB for most production deployments of XNAT, although you can allocate more if you have the available physical memory.

If you have other needs, you may want to see Tomcat configuration documentation relative to your platform, consult with your DevOps team, and/or see the XNAT IT Operations documentation.
Overriding Tomcat configuration on systemd

On newer versions of Linux, systemd replaces the older SysV framework for managing and controlling system services. systemd has a number of advantages over SysV, but requires specific configuration options to be set in order to work properly.

You can find the default configuration for Tomcat in the folder /lib/systemd/system or /usr/lib/systemd/system (on Ubuntu 20.04 and Debian 10, /lib is just a symlink to /usr/lib, so you can find it in either folder). You can modify the original service unit file directly, but It's better to override than to overwrite. To override the default configuration, copy the original service unit file to /etc/systemd/system. For example:

Creating Tomcat unit file override
BASH

cp /usr/lib/systemd/system/tomcat9.service /etc/systemd/system

Properties you may want or need to add or change include:

    User
    Group
    Adding CATALINA_OPTS to the environment
    Adding ReadWritePaths to the security configuration

Configuring other JVM options

If you plan to debug code in your XNAT service, add the appropriate debug flags to the Java configuration along with the xnat.home setting.
CODE

CATALINA_OPTS="${CATALINA_OPTS} -Dxnat.home=/data/xnat/home -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000"

There are many other options you can add to CATALINA_OPTS, including settings for memory allocation, garbage collection, performance profiling, etc., but understanding and tuning these appropriately can be very detailed. These are covered in the Advanced Topics section of this administrator's guide.
Changing the Tomcat User and Group

You may want to change the Tomcat service user and group. On Debian and Ubuntu servers that use systemd to control services, you can set the user and group in the service unit file. If you do change the user, you must change the ownership or permissions on all of the folders within the Tomcat installation. Failure to do this will result in permissions issues where the Tomcat service can't access its own configurations or application folders or even be able to write log files describing what went wrong. The general practice with the XNAT development and operations teams is to change the Tomcat user and group to something relevant to the project and application installation, e.g. our development servers are usually set up with the user set to xnat or xnatdev.

All of the Tomcat folders needed to be owned (or at least fully accessible, including write access in most cases) by the user indicated by the User property. In most default installations, this user is named the same as the service (tomcat9, tomcat, etc.) and all of the folders are owned appropriately. If you change the User setting, you must change the owner accordingly (the same thing goes for changing the group). This is complicated by the fact that the packaged installations of Tomcat on Debian- and Fedora-based systems actually install parts of the Tomcat application in different folders, then “integrate” these parts through symlinks (located in /var/lib/tomcat9 on Debian-based systems). Changing ownership just through the integrated installation folder doesn’t usually suffice to change permissions on folders that are symlinked. This can lead to confusing messages about not being able to create folders, write to files, etc.

On Debian- and Fedora-based Linux systems, you can change ownership for all of the folders quickly with these two commands:
BASH

$ chown -RH --dereference xnat.xnat /var/lib/tomcat9
$ chown --no-dereference xnat.xnat /var/lib/tomcat9/*

To verify the results of these operations, you can explicitly display the folders (this is for Debian and Ubuntu, references to /var/lib/tomcat9 may need to be changed on some other systems):
BASH

$ ls -ld /var/lib/tomcat9 /var/lib/tomcat9/* /etc/tomcat9 /var/log/tomcat9 /var/cache/tomcat9
drwxr-xr-x 4 xnat xnat 4096 Dec 6 22:41 /etc/tomcat9
drwxr-x--- 3 xnat xnat 4096 Dec 6 22:42 /var/cache/tomcat9
drwxr-xr-x 6 xnat xnat 4096 May 28 2016 /var/lib/tomcat9
drwxr-xr-x 3 xnat xnat 4096 May 28 2016 /var/lib/tomcat9/common
lrwxrwxrwx 1 xnat xnat 12 Jun 19 2015 /var/lib/tomcat9/conf -> /etc/tomcat9
lrwxrwxrwx 1 xnat xnat 17 Jun 19 2015 /var/lib/tomcat9/logs -> ../../log/tomcat9
drwxr-xr-x 3 xnat xnat 4096 May 28 2016 /var/lib/tomcat9/server
drwxr-xr-x 3 xnat xnat 4096 May 28 2016 /var/lib/tomcat9/shared
drwxrwxr-x 3 xnat xnat 4096 Dec 6 22:42 /var/lib/tomcat9/webapps
lrwxrwxrwx 1 xnat xnat 19 Jun 19 2015 /var/lib/tomcat9/work -> ../../cache/tomcat9
drwxr-x--- 2 xnat xnat 4096 Dec 8 20:14 /var/log/tomcat9

Whether you change the user or group for Tomcat or not, all XNAT data folders must be owned by the Tomcat user or at least assigned to the same group as the Tomcat user with full privileges for that user or group. Again, with XNAT development, we have a folder structure /data/xnat that is owned by the user xnat and the group xnat. Everything under there is then owned by the same user so that Tomcat can create, write, and delete any folder or file under that structure.
Installing the Tomcat manager

You can use the Tomcat manager application to manage your XNAT application within the Tomcat container. This is a relatively limited manage function, restricted to stopping, starting, undeploying (i.e. uninstalling), and deploying (i.e. installing) applications in the Tomcat container. However, this can be very useful if you're frequently installing or updating plugins in your XNAT application.

For installation and configuration instructions, see: Apache Tomcat 9 Manager App How-To.

Note the need for separate roles and users for the manager-gui, manager-script, and manager-jmx roles. If you install the Tomcat manager application, these users must be configured appropriately or you won't be able to properly access the application to manage your container instance.

During the configuration of the Tomcat manager, you need to modify the file web.xml within the manager application (if you install this via a Linux package manager, you can usually find this file at /usr/share/tomcat9-admin/manager/WEB-INF/web.xml). You need to change the value of the setting <max-file-size> to something larger than the war file, probably about 250MB. Once you've made this change, you'll need to restart Tomcat (the manager application can start and stop other applications, but not itself!).
Notes on Installing and Configuring PostgreSQL 10 or later

XNAT 1.8 can run under PostgreSQL on versions as early as 9.6. However, much new development on XNAT, including XNAT 1.8-compatible plugins will require PostgreSQL 10 or later. With that in mind, we strongly recommend using PostgreSQL 10 or later from the start.

The PostgreSQL wiki has detailed documentation on installing the server on many different platforms .

Note that you don't need to install PostgreSQL on the same server as your XNAT installation! XNAT connects to the database through a JDBC URL, which you can use to specify a server address as well as the target database. This usually requires some configuration on the PostgreSQL server side to accept connections from services hosted on remote machines.

Once you've installed PostgreSQL, you should create a user and database exclusively for XNAT. The XNAT standard practice is to name the database and user the same as the Tomcat user. There is no real link formed by these names, but it can reduce confusion. Also, the PostgreSQL client command-line utilities assume they should use the current user's name for both the database and user names when invoked. Thus, if you're operating as the user xnat, typing psql (without specifying a user with the -U or --username= parameter or a database by adding it to the command line) automatically tries to connect you to the database xnat as the database user xnat.

There are a number of different ways XNAT can connect to the database. How you configure this depends on your requirements for authentication and security, distribution of services (e.g. using another server to host your database), and so on. See Configuring PostgreSQL for XNAT for more information on setting up PostgreSQL for your particular scenario. 


Notes on Installing a Front-End Proxy (Optional)

You can set up a front-end proxy if you'd like. This can be a simple HTTP server, something like Apache HTTPD or nginx, These can be useful for managing multiple URLs or sites through a single server machine, configuring HTTPS with SSL certificates without involving Tomcat, and so on. They are completely optional.


