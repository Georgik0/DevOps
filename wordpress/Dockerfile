FROM alpine:3.7

# RUN apk update
# RUN apk add nginx openrc openssl
# RUN mkdir -p /run/nginx/
# RUN mkdir /home/www/

# nginx
# RUN rm -rf /etc/nginx/conf.d/default.conf
# COPY default.conf /etc/nginx/conf.d/
COPY default.conf ./
# COPY index.php /home/www/

# wordpress
# RUN apk add php7 php7-fpm php7-mysqli wget
# RUN wget http://wordpress.org/latest.tar.gz
# RUN mv latest.tar.gz /home/www/
# RUN tar -xzvf /home/www/latest.tar.gz
# RUN rm /home/www/latest.tar.gz
# COPY wp-config.php /home/www/wp-config.php
COPY wp-config.php ./

# mysql
COPY ./srcs ./
# RUN apk add mysql mysql-client
# RUN mkdir -p /run/mysqld
# RUN mv my.cnf /etc/

# get ssl
# RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
#  -keyout /etc/ssl/private/nginx-selfsigned.key \
#  -out /etc/ssl/certs/nginx-selfsigned.crt \
#  -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=nginx-selfsigned"

# COPY start.sh ./
COPY setup_wp_nginx.sh ./
COPY setup_sql.sh ./
EXPOSE 5050

# CMD ["/bin/sh", "-c", "/usr/sbin/php-fpm7; startsql.sh; exec nginx -g 'daemon off;';"]

# WORKDIR /var/www/localhost/htdocs
# CMD [ "/bin/sh", "start.sh" ]
# WORKDIR /home/www/