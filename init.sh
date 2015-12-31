#!/bin/bash

# move the installers
sudo cp /vagrant/homestead_installers/setup_oracle_java.sh /usr/local/bin/setup_oracle_java
sudo chmod +x /usr/local/bin/setup_oracle_java

sudo cp /vagrant/homestead_installers/setup_tomcat.sh /usr/local/bin/setup_tomcat
sudo chmod +x /usr/local/bin/setup_tomcat

sudo cp /vagrant/homestead_installers/setup_ruby.sh /usr/local/bin/setup_ruby
sudo chmod +x /usr/local/bin/setup_ruby

sudo cp /vagrant/homestead_installers/setup_jekyll.sh /usr/local/bin/setup_jekyll
sudo chmod +x /usr/local/bin/setup_jekyll

sudo cp /vagrant/homestead_installers/setup_frontend_tools.sh /usr/local/bin/setup_frontend_tools
sudo chmod +x /usr/local/bin/setup_frontend_tools
