# Homestead Installers

This is a bunch of utility scripts that can install other software/tools to your Laravel Homestead box.


## Installers Included

### Frontend Tools

* Yeoman
* CoffeScript
* SASS

### Blogging

* Jekyll

### Runtimes

* Oracle Java
* Ruby
* Apache Tomcat
* Docker


## Installation

Make sure you have a Homestead installed first before proceeding to this instructions. You can find instruction on how to install Homestead [here](https://laravel.com/docs/5.5/homestead#first-steps).

Once you have Homestead installed, login to the VM

```
cd ~/Homestead # should be where you cloned the homestead repo
vagrant ssh # login to the homestead box, you might need to vagrant first if its not running
```


clone the installer repo inside the /vagrant folder:

```
cd /vagrant
git clone https://github.com/buonzz/homestead-installers.git
```

now initialize the installers
```
cd /vagrant/homestead-installers
./init.sh
```

After the provisioning script is installed, several commands is now available when you login to your Homestead box. see usage section to see individual commands.


### Usage

Install Oracle Java

```
setup_oracle_java
```


Install Docker

```
setup_docker
```


Install Ruby

```
setup_ruby
```


Install ElasticSearch
```
setup_elasticsearch
```

Install Kibana
```
setup_kibana
```

Install Logstash
```
setup_logstash
```

Or you can simply install ELK stack in one command

```
setup_elk.sh
```


Install Maven

```
setup_maven
```


Install Box Command

```
setup_box
```

Install Frontend Tools

```
setup_frontend_tools
```

Install Jekyll

```
setup_jekyll
```

Install Tomcat

```
setup_tomcat
```

### ELK Stack

When you would like to setup ElasticSearch,Logstash and Kibana. You might need to change the Homestead.yaml so that ports can be mapped properly. Edit the ~/.homestead/Homestead.yaml

```
ports:
     - send: 9200
       to: 9200
     - send: 5601
       to: 5601
```
