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


## Installation

Make sure you have a Homestead installed first before proceeding to this instructions. You can find instruction on how to install Homestead [here](https://laravel.com/docs/5.2/homestead#first-steps).

Once you have Homestead installed, clone the installer repo inside the homestead folder:

```
cd ~/homestead
git clone https://github.com/buonzz/homestead-installers.git
```

edit after.sh in .homestead folder

```
vi ~/.homestead/after.sh
```

add the following code

```
sudo bash /vagrant/homestead-installers/init.sh
```

Now provision the box

```
cd ~/homestead
vagrant provision
```

After the provisioning script is installed, several commands is now available when you login to your Homestead box. see usage section to see individual commands.
