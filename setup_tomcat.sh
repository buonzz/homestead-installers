#!/bin/bash

#note - this requires java to be installed first, use setup_oracle_java.sh to use the built in one

wget http://mirror.symnds.com/software/Apache/tomcat/tomcat-8/v8.0.23/bin/apache-tomcat-8.0.23.tar.gz
tar xvzf apache-tomcat-8.0.23.tar.gz
sudo mv apache-tomcat-8.0.23 /opt/tomcat

# set tomcat home
CATALINA_HOME=/opt/tomcat
$CATALINA_HOME/bin/startup.sh

# append it in the global environment so it will be set even after restarts
echo 'CATALINA_HOME=/opt/tomcat' | sudo tee  /etc/profile.d/bamp2.sh


# copy the tweaked config file
sudo rm /opt/tomcat/conf/tomcat-users.xml
sudo cp /vagrant/installers/tomcat-users.xml /opt/tomcat/conf/tomcat-users.xml



# restart tomcat
$CATALINA_HOME/bin/shutdown.sh
$CATALINA_HOME/bin/startup.sh
