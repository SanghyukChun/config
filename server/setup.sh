#!/bin/bash
apt-get update
./utils.sh
./web.sh
./redmine.sh
./xe
./apache_restart.sh
