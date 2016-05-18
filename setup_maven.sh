#!/bin/bash

if ! [ -n `which java` ]; then
	setup_oracle_java
fi

sudo apt-get install maven
