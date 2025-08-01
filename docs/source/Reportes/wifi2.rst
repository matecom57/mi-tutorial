Ubuntu 22.04: Connect to WiFi from command line
===============================================

https://linuxconfig.org/ubuntu-22-04-connect-to-wifi-from-command-line

1. First step is to open a command line terminal and identify the name of your wireless network interface. To do so execute:

$ ls /sys/class/net
enp0s25  lo  wlp3s0

2. Next, navigate to the /etc/netplan directory and locate the appropriate Netplan configuration files. The configuration file might have a name 
such as 01-network-manager-all.yaml or 50-cloud-init.yaml.

$ ls /etc/netplan/

3. Edit the Netplan configuration file with nano or your favorite text editor. You will have to open the file with root permissions.

$ sudo nano /etc/netplan/50-cloud-init.yaml

4. Copy and paste the following configuration stanza while replacing the SSID-NAME-HERE and PASSWORD-HERE text with your SSID network name and 
password:

    wifis:
        wlan0:
            optional: true
            access-points:
                "SSID-NAME-HERE":
                    password: "PASSWORD-HERE"
            dhcp4: true

Make sure that the wifis block is aligned with the above ethernets or version block if present. The entire configuration file may look similar 
to the one below:

# This file is generated from information provided by the datasource.  Changes
# to it will not persist across an instance reboot.  To disable cloud-init's
# network configuration capabilities, write a file
# /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg with the following:
# network: {config: disabled}
network:
    ethernets:
        eth0:
            dhcp4: true
            optional: true
    version: 2
    wifis:
        wlp3s0:
            optional: true
            access-points:
                "SSID-NAME-HERE":
                    password: "PASSWORD-HERE"
            dhcp4: true

Alternatively, you may also wish to configure a static IP address to your wireless interface.

5. Once ready, apply the changes and connect to your wireless interface by executing the bellow command:

$ sudo netplan apply

Alternatively, if you run into some issues execute:

$ sudo netplan --debug apply

If all went well you would be able to see your wireless adapter connected to the wireless network by executing the ip command:

$ ip a


