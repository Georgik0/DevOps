FROM alpine:3.7

RUN apk update
RUN apk add nginx openrc openssl
RUN mkdir -p /run/nginx/
RUN mkdir -p /home/www/wordpress

# nginx
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/

WORKDIR /home/www/
# wordpress
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session
RUN apk add php7-fpm php7-mysqli php7-xml php7-simplexml php7-json php7-iconv php7-tokenizer php7-xmlwriter php7-session php7-mbstring
RUN wget http://wordpress.org/latest.tar.gz
RUN tar -xzvf latest.tar.gz
RUN rm latest.tar.gz
COPY wp-config.php ./

# supervisor
RUN apk --update add supervisor
COPY ./supervisord.conf /etc/supervisord.conf

# get ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 -keyout /etc/ssl/private/nginx-selfsigned.key \
 -out /etc/ssl/certs/nginx-selfsigned.crt \
 -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=nginx-selfsigned"

COPY start.sh ./
EXPOSE 5050

ENTRYPOINT ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]