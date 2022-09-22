#!/bin/bash

	sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf";
#	chown -R www-data:www-data /var/www/*;
#	chown -R 755 /var/www/*;
	mkdir -p /run/php/;
	touch /run/php/php7.3-fpm.pid;

if [ ! -f /var/www/html/wp-config.php ]; then
	echo "Wordpress: setting up..."
	mkdir -p /var/www/html
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
	chmod +x wp-cli.phar;
	mv wp-cli.phar /usr/local/bin/wp;
	cd /var/www/html;
    echo "Wordpress: downloading..."
	wp core download --locale=fr_FR --allow-root;
	#echo "Wordpress: creating users admin..."
    echo "Wordpress: configuration..."
	mv /var/www/tools/wp-config.php /var/www/html/
    #wp config create --dbname=${MARIADB_DATABASE} --dbuser=${MARIADB_USER} --dbpass=${MARIADB_PASSWORD} --dbhost=${WP_DB_HOST} --allow-root;
	echo "Wordpress: installation...";
    wp core install --url=apommier.42.fr --title=CoUcoU --admin_user=admin --admin_password=admin --admin_email=admin@42.fr --skip-email --allow-root;
    echo "Wordpress: create user...";
    #wp user create --allow-root ${WP_USER_LOGIN} ${WP_USER_EMAIL} --user_pass=${WP_USER_PASSWORD};
    wp user create apommier apommier@student.42.fr --user_pass=1234 --allow-root;
	#sudo -u ${USER} -i -- wp user create ${WP_USER_LOGIN} apommier@student.42.fr --user_pass=${WP_USER_PASSWORD};
    echo "Wordpress: set up!"
fi

exec "$@"