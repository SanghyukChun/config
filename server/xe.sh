#!/bin/bash
git clone https://github.com/xpressengine/xe-core.git
mv xe-core /var/www/xe
chmod 707 -R /var/www/xe
svn checkout http://xe-board.googlecode.com/svn/trunk/ board
mv board /var/www/xe/modules/board
