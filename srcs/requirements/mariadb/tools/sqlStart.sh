#!/bin/bash

service mysql start

if [ ! -d /var/lib/mysql/wordpress ]
then
echo "----sql config----"

mysql << EOF
CREATE DATABASE IF NOT EXISTS ${MARIADB_DATABASE};
CREATE USER IF NOT EXISTS '${MARIADB_USER}'@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';
GRANT ALL PRIVILEGES ON *.* TO '${MARIADB_USER}'@'%';
FLUSH PRIVILEGES;
EOF
mysql -u root < pwd.sh
echo "----sql config done----"
fi
service mysql stop
mysqld