#!/bin/bash
apt-get -y install redmine redmine-mysql
cp passenger.conf /etc/apache2/mods-available/passenger.conf
ln -s /usr/share/redmine/public /var/www/redmine
cp default /etc/apache2/sites-available/default
