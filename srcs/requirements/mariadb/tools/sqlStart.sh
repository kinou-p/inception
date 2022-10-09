#!/bin/bash
echo "----mysql start----"
service mysql start
echo "----mysql start done----"
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
echo "----mysql restart----"
service mysql stop
echo "----mysql stop done----"
mysqld
#mysqld -u root -p${MARIADB_PASSWORD}
