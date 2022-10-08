# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: apommier <apommier@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/12 01:38:24 by apommier          #+#    #+#              #
#    Updated: 2022/08/12 01:38:25 by apommier         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	-mkdir /home/apommier/wordpress
	-mkdir /home/apommier/mariadb
	docker-compose -f ./srcs/docker-compose.yml up --build

fclean: down
	-sudo rm -rf /home/apommier/wordpress
	-sudo rm -rf /home/apommier/mariadb
	-docker rm $$(docker ps -qa)
	-docker rmi -f $$(docker images -qa)
	-docker volume rm $$(docker volume ls -q)
	-docker network rm $$(docker network ls -q)
up:
	docker-compose -f ./srcs/docker-compose.yml up

back:
	docker-compose -f ./srcs/docker-compose.yml up --build -d

down:
	docker-compose -f ./srcs/docker-compose.yml down

re: fclean all