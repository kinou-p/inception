# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    sqlStart.sh                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: apommier <apommier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/08 11:59:11 by apommier          #+#    #+#              #
#    Updated: 2022/10/08 11:59:12 by apommier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

service mysql start

mysql << EOF

CREATE DATABASE IF NOT EXISTS ${MARIADB_DATABASE};
CREATE USER IF NOT EXISTS '${MARIADB_USER}'@'%' IDENTIFIED BY '${MARIADB_PASSWORD}';
GRANT ALL PRIVILEGES ON *.* TO '${MARIADB_USER}'@'%';
FLUSH PRIVILEGES;
EOF

service mysql stop
mysqld

