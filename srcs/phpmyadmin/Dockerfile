FROM alpine:3.7

RUN apk update
RUN apk add php7-fpm php7-mysqli php7-xml php7-simplexml php7-json php7-iconv php7-tokenizer php7-xmlwriter php7-session php7-mbstring
RUN apk add wget vim

# nginx
RUN apk add openrc openssl nginx
RUN mkdir -p /run/nginx/
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/

# phpMyAdmin
RUN mkdir -p /home/www/
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN tar -xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN mv ./phpMyAdmin-4.9.0.1-all-languages /home/www/
RUN mv /home/www/phpMyAdmin-4.9.0.1-all-languages /home/www/phpmyadmin
COPY config.inc.php /home/www/phpmyadmin

# supervisor
RUN apk --update add supervisor
COPY ./supervisord.conf /etc/supervisord.conf

# get ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 -keyout /etc/ssl/private/nginx-selfsigned.key \
 -out /etc/ssl/certs/nginx-selfsigned.crt \
 -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=nginx-selfsigned"

EXPOSE 5000

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
