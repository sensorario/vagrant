#!/bin/bash
sudo apt-get -qq update

sudo apt-get install -y apache2 vim tmux curl php5-cli php5-dev php5-fpm php5-curl php5-memcache git > /dev/null

sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# Software for compile node ...
sudo apt-get install -y build-essential g++ > /dev/null

# Node installation
nodeJsVersion="0.10.8"
urlNodeJs="http://nodejs.org/dist/v${nodeJsVersion}/node-v${nodeJsVersion}.tar.gz"
mkdir -p /root/nodejs-$nodeJsVersion
cd /root/nodejs-$nodeJsVersion && wget $urlNodeJs \
    && tar -xzf node-v${nodeJsVersion}.tar.gz \
    && cd node-v${nodeJsVersion} \
    && ./configure && make && make install > /dev/null
