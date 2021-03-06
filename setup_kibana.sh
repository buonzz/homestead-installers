#!/bin/bash

wget https://download.elastic.co/kibana/kibana/kibana-4.3.1-linux-x64.tar.gz
gunzip kibana-4.3.1-linux-x64.tar.gz
tar -xvf kibana-4.3.1-linux-x64.tar
sudo mkdir /opt/kibana
sudo cp -Rrvf kibana-4.3.1-linux-x64/* /opt/kibana/
cd /etc/init.d/
sudo wget https://gist.githubusercontent.com/thisismitch/8b15ac909aed214ad04a/raw/bce61d85643c2dcdfbc2728c55a41dab444dca20/kibana4
sudo chmod +x /etc/init.d/kibana4

sudo iptables -I INPUT -p tcp --dport 5601 -j ACCEPT
sudo iptables-save

sudo update-rc.d kibana4 defaults 96 9
sudo /etc/init.d/kibana4 restart