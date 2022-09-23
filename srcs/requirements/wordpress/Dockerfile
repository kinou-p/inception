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
RUN apt-get -y install php7.3 php-mysqli php-fpm wget sendmail sudo

EXPOSE 9000

COPY ./tools /var/www/tools

RUN chmod +x /var/www/tools/start.sh

ENTRYPOINT [ "/var/www/tools/start.sh" ]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]