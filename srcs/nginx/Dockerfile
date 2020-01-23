# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: qgimenez <qgimenez@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/09 16:27:58 by qgimenez          #+#    #+#              #
#    Updated: 2020/01/23 10:48:04 by qgimenez         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM nginx:alpine
RUN mkdir /run/nginx

COPY nginx.conf /etc/nginx/sites-available/localhost

COPY selfsigned.key /etc/ssl/private/selfsigned.key
COPY selfsigned.crt /etc/ssl/certs/selfsigned.crt

CMD nginx -g 'daemon off;'