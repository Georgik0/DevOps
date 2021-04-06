FROM alpine:3.7

RUN apk update
RUN apk add nginx openrc openssl
RUN mkdir -p /run/nginx/
RUN mkdir /home/www/

# nginx
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/

# wordpress
RUN apk add php7 php7-fpm wget
RUN wget http://wordpress.org/latest.tar.gz
RUN mv latest.tar.gz /home/www/
RUN tar -xzvf /home/www/latest.tar.gz
RUN rm /home/www/latest.tar.gz
COPY wp-config.php /home/www/wp-config.php

COPY start.sh ./start.sh

EXPOSE 5050

CMD [ "sh", "start.sh" ]