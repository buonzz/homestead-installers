#!/bin/bash

cd /vagrant/homestead-installers

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

sudo cp /vagrant/homestead-installers/setup_elasticsearch.sh /usr/local/bin/setup_elasticsearch
sudo chmod +x /usr/local/bin/setup_elasticsearch

sudo cp /vagrant/homestead-installers/setup_kibana.sh /usr/local/bin/setup_kibana
sudo chmod +x /usr/local/bin/setup_kibana

sudo cp /vagrant/homestead-installers/setup_elk.sh /usr/local/bin/setup_elk
sudo chmod +x /usr/local/bin/setup_elk

sudo cp /vagrant/homestead-installers/setup_logstash.sh /usr/local/bin/setup_logstash
sudo chmod +x /usr/local/bin/setup_logstash

sudo cp /vagrant/homestead-installers/setup_maven.sh /usr/local/bin/setup_maven
sudo chmod +x /usr/local/bin/setup_maven

sudo cp /vagrant/homestead-installers/setup_box.sh /usr/local/bin/setup_box
sudo chmod +x /usr/local/bin/setup_box
