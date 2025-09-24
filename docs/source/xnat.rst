XNAT
====

https://wiki.xnat.org/documentation/xnat-installation-guide

Step 1: Install Prerequisites

1: Start with a compatible server OS.

XNAT can be installed on any flavor of Linux OS or modern Unix-based Mac OS. Running XNAT on Windows is no longer supported and recent versions of XNAT have not been tested on Windows. We recommend either using a different operating system or running XNAT in a Vagrant virtual machine.

2: Install the core XNAT dependencies

    Java 8 JRE or JDK (XNAT will not run with later versions of Java)
    Apache Tomcat 8.5 or 9.0 (recommended; 7.0 supported but requires special configuration)
    PostgreSQL 10 or later

In addition to these, there are other optional components you may wish to install, such as setting up nginx as a reverse proxy. See Prerequisites for Installing XNAT for detailed installation instructions.

Step 2: Configure PostgreSQL

Configuring PostgreSQL is big topic, much of which is outside the scope of using it with XNAT. This page specifically addresses configuring access and security for the connection between XNAT and PostgreSQL. Other issues like tuning and improving performance may be addressed later.

The required steps for configuring PostgreSQL are located here: Configuring PostgreSQL for XNAT, and are summarized as follows:

1: Create XNAT's database user

2: Configuring database access

3: Configuring TCP/IP Listeners

4: (Optional) Managing database access by user and host

Step 3: Set Up XNAT_HOME and the File System Structure

XNAT 1.8.0 was developed and tested on Apache Tomcat 7.0, which just reached its announced end of life on March 31, 2021. These instructions reflect that environment. It is easy to modify an existing XNAT installation for compatibility with Tomcat 8.5. See Running XNAT on Tomcat 8.5 and Later

A series of file system paths must be set up on Tomcat and owned by the Tomcat service user. We recommend changing the Tomcat service user and group to something relevant to your XNAT installation, though this isn't strictly necessary.

1: (Optional) Set the Tomcat service user and group

Locate the primary Tomcat configuration file. This location will depend on your server OS.

    For Debian and Ubuntu systems, this is usually located in /etc/default/tomcat8.
    For Fedora, Red Hat, CentOS, and similar systems, this is usually located in /etc/tomcat7/tomcat7.conf, but may be in /usr/share/tomcat7/conf/tomcat7.conf (as noted, newer versions of these operating systems don't provide installations for Tomcat later than version 7).
    OS X doesn't have the same standard method of configuring properties for Tomcat as a service. Generally, you can create a file in the bin folder for your Tomcat installation named setenv.sh. You should also make the file executable with the command chmod +x setenv.sh . You can modify this file in the same way as the configuration files for the Linux platforms.

You may also need to modify the unit file for the Tomcat service definition. This is usually located in /etc/systemd/system/tomcat9.service. If you modify the unit file, you'll need to reload the configuration with the following command:
CODE

sudo systemctl daemon-reload

Modify your configuration so that the Tomcat user and group properties are set to your preferred values. For Tomcat 7, this will be in the primary Tomcat configuration file:
CODE

# Run Tomcat as this user ID. Not setting this or leaving it blank will use the
# default of tomcat7.
TOMCAT7_USER=xnat

# Run Tomcat as this group ID. Not setting this or leaving it blank will use
# the default of tomcat7.
TOMCAT7_GROUP=xnat

When the user and group are specified in the service definition, you'll need to modify the unit file. The code below shows the security configuration from the Tomcat 9 unit file on Ubuntu 20.04:
CODE

User=xnat
Group=xnat
PrivateTmp=yes
AmbientCapabilities=CAP_NET_BIND_SERVICE
NoNewPrivileges=true
CacheDirectory=tomcat9
CacheDirectoryMode=750
ProtectSystem=strict
ReadWritePaths=/etc/tomcat9/Catalina/
ReadWritePaths=/var/lib/tomcat9/webapps/
ReadWritePaths=/var/log/tomcat9/
ReadWritePaths=/data/xnat/


Note that the configuration above, in addition to changing the values for User and Group, also adds an entry for ReadWritePaths with the value /data/xnat/. This is necessary so that the Tomcat process, running as the xnat user, can read and write to folders and files under the specified directory. If you break the XNAT folders into different root directories, you'll need to add similar entries for each root folder. For example, if you set the XNAT home folder to /home/xnat and the storage folder (archive, prearchive, etc.) in /mnt/storage/xnat, you'd need to add the following entries to the unit file:
CODE

ReadWritePaths=/home/xnat/
ReadWritePaths=/mnt/storage/xnat/

Note also the trailing '/' character. This allows the user to create and write to folders and files underneath the specified folder.

One virtue of creating a new service user is that this user's home (~/) folder can be treated as the XNAT_HOME directory, which we will set up in the next step. For now, while we are in the Tomcat configuration file, we must define the location of the XNAT_HOME directory. Scroll down to the CATALINA_OPTS section of the config file and enter:
CODE

CATALINA_OPTS="${CATALINA_OPTS} -Dxnat.home=/data/xnat/home"

You may want to enter other Tomcat configurations here as desired, such as setting other JVM options and installing the Tomcat manager application. Detailed instructions can be found in Prerequisites for Installing XNAT

After changing the Tomcat service user, you must give this user ownership of the Tomcat directories.

For Debian/Fedora Linux systems:
CODE

$ chown -RH --dereference xnat.xnat /var/lib/tomcat7
$ chown --no-dereference xnat.xnat /var/lib/tomcat7/*

For CentOS 7:
BASH

$ chown -RL --dereference xnat.xnat /usr/share/tomcat7
$ chown --no-dereference xnat.xnat /usr/share/tomcat7/*


2: Create the XNAT_HOME set of folders

The XNAT web application will look in XNAT_HOME for key configuration resources which will be used at system startup, as well as for capturing XNAT-specific system logs. See Understanding the Components of XNAT for a detailed description of the XNAT_HOME folder structure and contents.

We must create folders for these components now.
CODE

$ mkdir -p /data/xnat/home/config
$ mkdir /data/xnat/home/logs
$ mkdir /data/xnat/home/plugins
$ mkdir /data/xnat/home/work


3: Create the XNAT data folders

These folders sit outside XNAT_HOME and are used for data file storage. See Understanding the Components of XNAT for a detailed description of the XNAT file system folder structure and contents.

We must create these folders as well.
CODE

$ mkdir /data/xnat/archive
$ mkdir /data/xnat/build
$ mkdir /data/xnat/cache
$ mkdir /data/xnat/fileStore
$ mkdir /data/xnat/ftp
$ mkdir /data/xnat/inbox
$ mkdir /data/xnat/prearchive


4: Grant ownership to the Tomcat service user

This step is only necessary if you have set a new service user in step 1.
CODE

$ chown -R xnat:xnat /data


Step 4: Configure XNAT for Initial Startup

Create the XNAT configuration file xnat-conf.properties in the folder ${xnat.home}/config. This file is used for initializing the database connection and setting the properties for XNAT's Hibernate configuration.

If you don't add the database connection and Hibernate properties, XNAT will use its own default properties, which are the same as those in the default version listed below.


1: Create the xnat-conf.properties file
CODE

$ touch /data/xnat/home/config/xnat-conf.properties


2: Populate your configuration properties, using this sample as a starting point

Note the username and password for the PostgreSQL datasource must match what you used when configuring PostgreSQL earlier.

Sample XNAT configuration
JAVA

datasource.driver=org.postgresql.Driver
datasource.url=jdbc:postgresql://localhost/xnat
datasource.username=xnat
datasource.password=xnat
 
hibernate.dialect=org.hibernate.dialect.PostgreSQL9Dialect
hibernate.hbm2ddl.auto=update
hibernate.show_sql=false
hibernate.cache.use_second_level_cache=true
hibernate.cache.use_query_cache=true

3: Don't worry about importing datatypes or file configurations.

Unlike XNAT 1.6 and earlier, XNAT 1.8 does not require a separate step to import core or custom data types. This removes the need to run any setup, update, or SQL scripts prior to starting XNAT. All database schema are created and initialized upon application startup.

Accordingly, there is no need to configure any files with the location of your XNAT data folders. These are also initialized on application startup.


Step 5: Install the XNAT Web Application

The XNAT web application is distributed as a "war file", or "web application archive", which contains the entire XNAT application in a single bundle. There are a multiple ways to install XNAT itself, but the easiest is to simply deploy the XNAT war file. You can always retrieve the latest public XNAT war at https://download.xnat.org/

1: Stop Tomcat if it is running.
CODE

$ sudo service tomcat7 stop


2: From your local system, upload the XNAT war file to the Tomcat webapps directory

When you upload the distributed war file to Tomcat, you will want to rename the war to match the server path where you want your application to be accessed. For example, if you wanted to reach your XNAT at https://{server}/xnat, you would rename the file to "xnat.war". If you want XNAT to be available at your server root path, rename the file "ROOT.war"
CODE

$ scp xnat-web-1.8.0.war xnat@{server}:/var/lib/tomcat7/webapps

Note that this webapp should be owned by the "xnat" Tomcat service user we set up in Step 3.


3: (Optional) Manually explode the war file to a directory

On server startup, Tomcat will automatically extract your war file to a directory matching the name of the war file. If you wanted to manually extract the war file to a different directory, you can. For example, this would take an uploaded file named "xnat.war" and extract its contents to the ROOT directory.
CODE

$ cd /var/lib/tomcat7/webapps
$ mkdir ROOT
$ cd ROOT
$ jar -xvf ../xnat.war


4: Start Tomcat and monitor Catalina until it starts up successfully
CODE

$ sudo service tomcat7 start
$ tail -f /var/log/tomcat7/catalina.out

The catalina.out system log file will display messages from Tomcat while it attempts to launch your XNAT webapp. Assuming it is successful (i.e. no SEVERE errors are logged), you will see a message like this:
CODE

SOURCE: /var/lib/tomcat7/webapps/ROOT/
Database up to date.
Mar 08, 2021 11:59:14 PM org.apache.catalina.startup.HostConfig deployWAR
INFO: Deployment of web application archive /var/lib/tomcat7/webapps/ROOT.war has finished in 91,125 ms
Mar 08, 2021 11:59:14 PM org.apache.coyote.AbstractProtocol start
INFO: Starting ProtocolHandler ["http-bio-8080"]
Mar 08, 2021 11:59:14 PM org.apache.catalina.startup.Catalina start
INFO: Server startup in 92397 ms


Step 6: Set Up Your XNAT

If this is the first time your XNAT has started up, you will be taken to the first-time setup screen to confirm or enable key startup settings. See XNAT Setup - First Time Configuration for more details on these settings.

1: Navigate to your XNAT's web URL in a browser

2: Log in using admin credentials

If this is your first time logging in, these credentials are "admin:admin".

After first-time setup, and before creating any other user accounts, go to your admin user settings and change the default password. Also, if you are configuring a production deployment of XNAT, we strongly recommend that you create a new personal administrator account and disable the default admin account altogether.

3: Complete the first-time setup

Congratulations! You now have a running XNAT system!


Next Steps: Extending XNAT

You can extend XNAT through the use of plugins. Plugins are simply jar files that contain a mix of datatype schema, Velocity templates, JavaScript files, JSP pages, compiled Java classes, and more. See Deploying Plugins in XNAT for installation instructions. 

Core XNAT plugins to consider installing:

    XNAT-OHIF Viewer Plugin
    Container Service Plugin
    Batch Launch Plugin


In previous versions of XNAT, you had to configure any new datatypes you added to XNAT. XNAT automatically configures new datatypes and makes them available for immediate use. You still may want to configure any new datatypes just to set the readable names and check the security settings for it, but you don't need to do that just to create new instances of your datatypes.


