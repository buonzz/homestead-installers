#!/bin/bash

# Install kernel extra's to enable docker aufs support
sudo apt-get -y install linux-image-extra-$(uname -r)

# Add Docker PPA and install latest version
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo sh -c "echo deb https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-get install docker-engine -y

# add vagrant user to docker group
sudo usermod -aG docker vagrant

# test the installation

sudo service docker start
sudo docker run hello-world