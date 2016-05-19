#!/bin/bash

sudo gem install jekyll

# install common plugins
sudo gem install jekyll-paginate
sudo apt-get install python-pygments
sudo gem install pygments.rb

# open jekyll port
sudo iptables -I INPUT -p tcp --dport 4000 -j ACCEPT
sudo iptables-save

# jekyll serve -H 0.0.0.0 -- to make jekyll listen to public ports
