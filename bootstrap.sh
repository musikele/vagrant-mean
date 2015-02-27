#!/usr/bin/env bash

#add mongoDB repository 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

#add nodejs configuration
curl -sL https://deb.nodesource.com/setup | sudo bash -

apt-get update

#install various packages
sudo apt-get install -y mongodb-org
sudo apt-get install -y apache2
sudo apt-get install -y nodejs

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi


npm install -g grunt


