#!/bin/bash

service mysql start

if [ ! -d /var/lib/mysql/wordpress ]
then
echo "----sql config----"
mysql < db.sh
#mysql -u root < pwd.sh

fi
service mysql stop
mysqld