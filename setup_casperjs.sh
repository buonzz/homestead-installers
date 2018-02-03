#!/bin/bash

if ! [ -n `which phantomjs` ]; then
	setup_phantomjs
fi

git clone git://github.com/casperjs/casperjs.git
cd casperjs
ln -sf `pwd`/bin/casperjs /usr/local/bin/casperjs