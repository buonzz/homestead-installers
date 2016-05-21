#!/bin/bash

curl -LSs https://box-project.github.io/box2/installer.php | php
sudo mv box.phar /usr/local/bin/box
sudo chmod 755 /usr/local/bin/box

echo "phar.readonly=Off" | sudo tee -a /etc/php/7.0/cli/php.ini