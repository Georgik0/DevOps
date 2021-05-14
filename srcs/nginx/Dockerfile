FROM alpine:3.7

RUN apk update
RUN apk add nginx openrc openssl
RUN mkdir -p /run/nginx/
RUN mkdir /home/www/

# nginx
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/
COPY index.html /home/www/

# get ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 -keyout /etc/ssl/private/nginx-selfsigned.key \
 -out /etc/ssl/certs/nginx-selfsigned.crt \
 -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=nginx-selfsigned"

COPY start.sh ./start.sh

EXPOSE 80
EXPOSE 443


CMD [ "sh", "start.sh" ]
