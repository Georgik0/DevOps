FROM alpine:3.7

RUN apk update
# RUN apk add php7-common php7-session php7-iconv php7-json \
# php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi \
# fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix \
# php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom
# RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session
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
# RUN wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
# RUN tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
# RUN mv ./phpMyAdmin-5.0.2-all-languages /home/www/
# RUN mv /home/www/phpMyAdmin-5.0.2-all-languages /home/www/phpmyadmin
COPY config.inc.php /home/www/phpmyadmin

# supervisor
# RUN apk add supervisor
RUN apk --update add supervisor
COPY ./supervisord.conf /etc/supervisord.conf

# telegraf
# ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.6.3-static_linux_amd64.tar.gz ./
# RUN tar -C . -xzf telegraf-1.6.3-static_linux_amd64.tar.gz
# RUN cp telegraf/telegraf /usr/bin/
# RUN mkdir -p /etc/telegraf
# COPY ./telegraf.conf /etc/telegraf/telegraf.conf

# get ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 -keyout /etc/ssl/private/nginx-selfsigned.key \
 -out /etc/ssl/certs/nginx-selfsigned.crt \
 -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=nginx-selfsigned"

COPY start.sh .

EXPOSE 5000

# CMD [ "sh", "start.sh" ]
# CMD ["/usr/bin/supervisord", "-d", "/etc/supervisord.conf"]
ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]
