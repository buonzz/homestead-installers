#!/bin/bash

if ! [ -n `which java` ]; then
	setup_oracle_java
fi	

setup_elasticsearch
setup_kibana
setup_logstash
