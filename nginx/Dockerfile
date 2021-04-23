FROM alpine:3.7

RUN apk update
RUN apk add nginx openrc openssl
RUN mkdir -p /run/nginx/
RUN mkdir /home/www/

# nginx
RUN rm -rf /etc/nginx/conf.d/default.conf
# RUN addgroup -S nginx && adduser -S nginx -G nginx
# RUN chown -R nginx:nginx /run/nginx/
# RUN chmod 775 /run/nginx/
# RUN chown -R nginx:nginx /var/lib/nginx
# RUN chown -R nginx:nginx /www
# RUN touch /run/openrc/softlevel
COPY default.conf /etc/nginx/conf.d/
COPY index.html /home/www/

# get ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 -keyout /etc/ssl/private/nginx-selfsigned.key \
 -out /etc/ssl/certs/nginx-selfsigned.crt \
 -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=nginx-selfsigned"

# telegraf
# ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.6.3-static_linux_amd64.tar.gz ./
# RUN tar -C . -xzf telegraf-1.6.3-static_linux_amd64.tar.gz
# RUN cp telegraf/telegraf /usr/bin/
# RUN mkdir -p /etc/telegraf
# COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY start.sh ./start.sh

EXPOSE 80
EXPOSE 443


CMD [ "sh", "start.sh" ]
