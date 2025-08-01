wifi
====

Connecting to Wi-Fi from the command line in Ubuntu 22.04 can be accomplished using nmcli, a command-line tool for NetworkManager.

1. Identify your wireless interface:

Open a terminal and execute.
Código

    ls /sys/class/net

* Look for an interface name typically starting with w (e.g., wlan0, wlp3s0). This is your wireless interface.

2. Scan for available Wi-Fi networks:

* Use the following command to scan for nearby networks:

Código

    nmcli d wifi list --rescan yes

This will display a list of available SSIDs (network names).

3. Connect to a Wi-Fi network:

* To connect to a specific network, use the following command, replacing SSID_NAME with the actual network name and PASSWORD with the network's 
password:

Código

    nmcli d wifi connect SSID_NAME password PASSWORD

* If the connection is successful, you will receive a confirmation message.

4. Verify the connection:

* To check the status of your network connection, use:

Código

    nmcli c show

This will list all connections, and you should see your connected Wi-Fi network listed as "activated".


