#!/bin/bash
service mysql start
#service mysql start && mysql < /mysql_scripts/mySqlScript.sql

mysql << EOF

CREATE DATABASE IF NOT EXISTS ${MARIADB_DATABASE};
CREATE USER IF NOT EXISTS '${MARIADB_USER}'@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';
GRANT ALL PRIVILEGES ON *.* TO '${MARIADB_USER}'@'%';
FLUSH PRIVILEGES;
EOF

#mysqld --datadir='/home/mariadb'
service mysql stop
mysqld
#/etc/init.d/mysql stop

#exec "$@"

