#!/bin/bash

echo 'deb http://packages.elasticsearch.org/logstash/2.0/debian stable main' | sudo tee /etc/apt/sources.list.d/logstash.list
sudo apt-get update
sudo apt-get install logstash