firefox2
========

https://askubuntu.com/questions/1491840/how-do-i-install-firefox-on-ubuntu-server-22-04-jammy-offline

First of all, download Firefox from the official website:

Open a terminal

Run on it

cd ~/Downloads

wget https://archive.mozilla.org/pub/firefox/releases/119.0.1/linux-x86_64/en-US/firefox-119.0.1.tar.bz2

Once the file has been downloaded, it can be located in the 'Downloads' folder.

Extract the file using the following command in that terminal:

 tar -xjf firefox-119.0.1.tar.bz2

We should now have an extracted folder called 'firefox'.

We need to move the folder to '/opt' with the following command:

 sudo mv firefox /opt

Now, we will create a link to launch the web browser from the terminal.

Run the following command to create the link to Firefox

sudo ln -s /opt/firefox/firefox /usr/bin/firefox
