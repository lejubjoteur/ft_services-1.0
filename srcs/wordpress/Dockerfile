# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: qgimenez <qgimenez@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/21 15:14:48 by qgimenez          #+#    #+#              #
#    Updated: 2020/01/23 14:37:12 by qgimenez         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM wordpress:php7.4-fpm-alpine
RUN apk update && \
	apk add nginx mysql-client

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./mysql.sql /mysql.sql
COPY entrypoint /entrypoint

ENTRYPOINT sh /entrypoint