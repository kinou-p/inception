#!/bin/bash

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
	mv /var/www/tools/wp-config.php /var/www/html/
	echo "Wordpress: installation...";
    wp core install --url=apommier.42.fr --title=CoUcoU --admin_user=admin --admin_password=admin --admin_email=admin@42.fr --skip-email --allow-root;
    echo "Wordpress: create user...";
    wp user create apommier apommier@student.42.fr --user_pass=1234 --allow-root;
    echo "Wordpress: set up!"
else
	echo "Wordpress: setting up..."
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
	chmod +x wp-cli.phar;
	mv wp-cli.phar /usr/local/bin/wp;
	cd /var/www/html;
	echo "Wordpress: installation...";
    wp core install --url=apommier.42.fr --title=CoUcoU --admin_user=admin --admin_password=admin --admin_email=admin@42.fr --skip-email --allow-root;
    echo "Wordpress: create user...";
    wp user create apommier apommier@student.42.fr --user_pass=1234 --allow-root;
    echo "Wordpress: set up!"
fi

exec "$@"