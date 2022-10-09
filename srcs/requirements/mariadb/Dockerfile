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

RUN mkdir /mysql_scripts
COPY ./tools/ /mysql_scripts/
EXPOSE 3306
WORKDIR /mysql_scripts
ENTRYPOINT ["bash", "sqlStart.sh"]
#ENTRYPOINT ["bash", "work.sh"]