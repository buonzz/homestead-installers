#!/bin/bash

sudo apt-get -y update
sudo apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev
cd /tmp
wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.0.tar.gz
tar -xvzf ruby-2.3.0.tar.gz
cd ruby-2.3.0/
./configure --prefix=/usr/local
make
sudo make install
