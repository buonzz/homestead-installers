#!/bin/bash

# ask user to invoke setup_ruby and setup_nodejs first

sudo gem install jekyll

# open jekyll port
sudo iptables -I INPUT -p tcp --dport 4000 -j ACCEPT
sudo iptables-save
