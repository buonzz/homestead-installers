#!/bin/bash

cd /vagrant/homestead-installers
git pull origin master

# move the installers
sudo cp /vagrant/homestead-installers/setup_oracle_java.sh /usr/local/bin/setup_oracle_java
sudo chmod +x /usr/local/bin/setup_oracle_java

sudo cp /vagrant/homestead-installers/setup_tomcat.sh /usr/local/bin/setup_tomcat
sudo chmod +x /usr/local/bin/setup_tomcat

sudo cp /vagrant/homestead-installers/setup_ruby.sh /usr/local/bin/setup_ruby
sudo chmod +x /usr/local/bin/setup_ruby

sudo cp /vagrant/homestead-installers/setup_jekyll.sh /usr/local/bin/setup_jekyll
sudo chmod +x /usr/local/bin/setup_jekyll

sudo cp /vagrant/homestead-installers/setup_frontend_tools.sh /usr/local/bin/setup_frontend_tools
sudo chmod +x /usr/local/bin/setup_frontend_tools

sudo cp /vagrant/homestead-installers/all.sh /usr/local/bin/setup_all_tools
sudo chmod +x /usr/local/bin/setup_all_tools

sudo cp /vagrant/homestead-installers/setup_docker.sh /usr/local/bin/setup_docker
sudo chmod +x /usr/local/bin/setup_docker
