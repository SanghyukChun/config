git clone https://gerrit.wikimedia.org/r/p/mediawiki/core.git
mv core /var/www/wiki
chmod 707 -R /var/www/wiki
service apache2 restart
