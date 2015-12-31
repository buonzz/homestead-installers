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

Clone the main Homestead repo first. Then edit this file

```
cd ~
git clone https://github.com/laravel/homestead.git
cd homestead
bash init.sh
```

Then clone the installer repo

```
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
vagrant up
```

