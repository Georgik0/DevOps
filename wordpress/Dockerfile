FROM alpine:3.7

RUN apk update
RUN apk add nginx openrc openssl
RUN mkdir -p /run/nginx/
RUN mkdir -p /home/www/wordpress

# nginx
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/
# RUN mkdir -p /etc/nginx/snippets
# COPY ./fastcgi-php.conf /etc/nginx/snippets/fastcgi-php.conf
# COPY index.php /home/www/

WORKDIR /home/www/
# wordpress
# RUN apk add php7 php7-fpm php7-mysqli wget
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session
RUN apk add php7-fpm php7-mysqli php7-xml php7-simplexml php7-json php7-iconv php7-tokenizer php7-xmlwriter php7-session php7-mbstring
RUN wget http://wordpress.org/latest.tar.gz
# RUN mv latest.tar.gz /home/www/wordpress
RUN tar -xzvf latest.tar.gz
RUN rm latest.tar.gz
COPY wp-config.php ./

# Install Wordpress
# ADD https://wordpress.org/latest.tar.gz .
# RUN tar -xvf latest.tar.gz && \
# 	mv wordpress /home/www/ && \
# 	rm -f latest.tar.gz
# COPY wp-config.php /home/www/wordpress/wp-config.php

# supervisor
# RUN apk add supervisor
RUN apk --update add supervisor
COPY ./supervisord.conf /etc/supervisord.conf

# telegraf
ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.6.3-static_linux_amd64.tar.gz ./
RUN tar -C . -xzf telegraf-1.6.3-static_linux_amd64.tar.gz
RUN cp telegraf/telegraf /usr/bin/
RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

# get ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 -keyout /etc/ssl/private/nginx-selfsigned.key \
 -out /etc/ssl/certs/nginx-selfsigned.crt \
 -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=nginx-selfsigned"

COPY start.sh ./
EXPOSE 5050

# CMD ["/bin/sh", "-c", "/usr/sbin/php-fpm7; startsql.sh; exec nginx -g 'daemon off;';"]

# WORKDIR /var/www/localhost/htdocs
# CMD [ "sh", "start.sh" ]
ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
# WORKDIR /home/www/