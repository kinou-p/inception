# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: apommier <apommier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/19 19:54:25 by apommier          #+#    #+#              #
#    Updated: 2022/08/24 05:28:40 by apommier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM        debian:buster

RUN			apt update -y
RUN         apt-get install -y nginx openssl

RUN         mkdir -p /etc/ssl/private
RUN         mkdir -p /etc/ssl/certs
RUN         openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=FR/ST=17/L=StJeanDeLiversay/O=42/CN=apommier" 

COPY		conf/nginx2.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]
