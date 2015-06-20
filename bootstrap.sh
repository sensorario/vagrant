#!/bin/bash
sudo apt-get -qq update

sudo apt-get install -y apache2
sudo apt-get install -y vim
sudo apt-get install -y tmux
sudo apt-get install -y curl
sudo apt-get -y install php5-cli php5-dev php5-fpm php5-curl php5-memcache
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo apt-get install -y git

curl -sL https://deb.nodesource.com/setup | sudo bash -

sudo apt-get install -y nodejs

curl http://npmjs.org/install.sh | sh
