# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: apommier <apommier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/19 19:54:25 by apommier          #+#    #+#              #
#    Updated: 2022/08/24 05:30:23 by apommier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update -y
RUN apt-get install -y mariadb-client mariadb-common mariadb-server
RUN sed -i 's/bind-address/bind-address = 0.0.0.0 #/i' /etc/mysql/mariadb.conf.d/50-server.cnf
EXPOSE 3306
COPY ./tools/setup.sql /
RUN service mysql start && mysql < setup.sql
CMD ["/usr/bin/mysqld_safe"]