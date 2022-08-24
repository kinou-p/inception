# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: apommier <apommier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/19 19:54:25 by apommier          #+#    #+#              #
#    Updated: 2022/08/24 04:10:35 by apommier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update \
	apt install php-fpm \
	apt install wget \
	apt install tar \
	wget https://wordpress.org/latest.tar.gz \
	tar -xzvf latest.tar.gz \
	mv wordpress /var/www/html

RUN apt install php-mysql \
	apt install php-gd \
	apt install mysqli

RUN service php restart


#RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql