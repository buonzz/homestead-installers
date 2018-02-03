#!/bin/bash

if ! [ -n `which phantomjs` ]; then
	setup_phantomjs
fi

git clone git://github.com/casperjs/casperjs.git
cd casperjs
sudo ln -sf /vagrant/homestead-installers/casperjs/bin/casperjs /usr/local/bin/casperjs