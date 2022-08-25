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

RUN apt-get update
RUN	apt install -y php-fpm
RUN	apt install -y wget
RUN	apt install -y tar

WORKDIR /var/www/html

#RUN	wget https://wordpress.org/latest.tar.gz
#RUN	tar -xzvf latest.tar.gz
#RUN ls
#RUN ls /var
#RUN mkdir /var/www
#RUN	mv ./wordpress /var/www/html

RUN apt install -y php-mysql
RUN	apt install -y php-gd
RUN	apt install -y php-mysqli

#RUN service php restart


#RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql