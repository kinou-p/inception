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

FROM debian:buster

RUN su
RUN apt update && apt upgrade -y
RUN apt install nginx sudo -y
#COPY /home/apommier/42/inception/srcs/wordpresse/ var/www/html

RUN ls var/www/
#CMD ["echo","-----------new-----------"]
#CMD ["ls","var/www/"]
#CMD ["echo","-----------new-----------"]
#CMD ["ls","var/www/html"]
#CMD ["echo","-----------new-----------"]
#CMD ["ls","var/www/html2"]
#CMD ["echo","-----------new-----------"]
#CMD ["ls","var/www/html3"]
ENTRYPOINT ["nginx","-g","daemon off;"]
#RUN cd var/www/html && ls && cat index.php
#RUN ls var/www/
#RUN sudo service nginx restart