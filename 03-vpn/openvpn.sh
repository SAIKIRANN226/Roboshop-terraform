#!/bin/bash
# non-interactive or headless installation
export AUTO_INSTALL=y
export ENDPOINT=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)
export APPROVE_INSTALL=y
export APPROVE_IP=y
export IPV6_SUPPORT=n
export PORT_CHOICE=1
export PROTOCOL_CHOICE=2
export DNS=1
export COMPRESSION_ENABLED=n
export CUSTOMIZE_ENC=n
export CLIENT=devops76s
export PASS=1
curl -O https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
chmod +x openvpn-install.sh
./openvpn-install.sh


# it is a userdata if you want to run a small script when instance is created it will automatically run this user data,for now this script is to install open vpn immediately after creating instance,where will be user data logs go the created vpn instance take publicIP ---> sudo su - --->cd /var/log/ ---> ls -l ---> cloud-init.log ---> tail -f cloud-init.log,after creating this,go to the root folder there it will create a vpn file we need to take that using cat and save it in local this have to do manually in the server,since we cannot do this one step automate