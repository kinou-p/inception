# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: apommier <apommier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/08 11:59:05 by apommier          #+#    #+#              #
#    Updated: 2022/10/08 11:59:06 by apommier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

	sleep 5
	sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf";
	mkdir -p /run/php/;
	touch /run/php/php7.3-fpm.pid;

if [ ! -f /var/www/html/wp-config.php ]
then
	echo "Wordpress: setting up..."
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
	chmod +x wp-cli.phar;
	mv wp-cli.phar /usr/local/bin/wp;
	mkdir -p /var/www/html
	cd /var/www/html;
    echo "Wordpress: downloading..."
	wp core download --locale=fr_FR --allow-root;
    echo "Wordpress: configuration..."
	wp config create --dbname=${MARIADB_DATABASE} --dbuser=${MARIADB_USER} --dbpass=${MARIADB_PASSWORD} --dbhost=${WORDPRESS_DB_HOST} --skip-check --allow-root
	echo "Wordpress: installation...";
    wp core install --url=${WP_URL} --title=${WP_TITLE} --admin_user=${WP_ADMIN_LOGIN} --admin_password=${WP_ADMIN_PASSWORD} --admin_email="${WP_ADMIN_EMAIL}" --skip-email --allow-root;
    echo "Wordpress: create user...";
    wp user create ${WP_USER_LOGIN} ${WP_USER_EMAIL} --user_pass=${WP_USER_PASSWORD} --allow-root;
    echo "Wordpress: set up!"
else
	echo "Wordpress: setting up..."
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
	chmod +x wp-cli.phar;
	mv wp-cli.phar /usr/local/bin/wp;
	cd /var/www/html;
	echo "Wordpress: installation...";
    wp core install --url=${WP_URL} --title=${WP_TITLE} --admin_user=${WP_ADMIN_LOGIN} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --skip-email --allow-root;
    echo "Wordpress: create user...";
    wp user create ${WP_USER_LOGIN} ${WP_USER_EMAIL} --user_pass=${WP_USER_PASSWORD} --allow-root;
    echo "Wordpress: set up!"
fi

exec "$@"