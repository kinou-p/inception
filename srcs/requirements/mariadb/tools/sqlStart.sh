#!/bin/bash

service mysql start

mysql << EOF

CREATE DATABASE IF NOT EXISTS ${MARIADB_DATABASE};
CREATE USER IF NOT EXISTS '${MARIADB_USER}'@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';
GRANT ALL PRIVILEGES ON *.* TO '${MARIADB_USER}'@'%';
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('$MARIADB_ROOT_PASSWORD');
FLUSH PRIVILEGES;
EOF

service mysql stop
mysqld

