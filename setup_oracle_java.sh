#!/bin/bash

sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | \
  sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  sudo debconf-set-selections
sudo apt-get -y install oracle-java8-installer

#setup java_home environment var and save it in bash
JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:bin/javac::")

# append it in the global environment so it will be set even after restarts
echo 'JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:bin/javac::")' | sudo tee  /etc/profile.d/java8.sh