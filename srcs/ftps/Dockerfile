FROM alpine:3.12

RUN apk update
RUN apk add openrc openssl vsftpd

# install vsftpd
COPY ./vsftpd.conf /etc/vsftpd/vsftpd.conf
RUN adduser -D -h /ftp skitsch
RUN echo "skitsch:skitsch" | chpasswd
RUN touch /etc/vsftpd.user_list
RUN	mkdir -p /var/log/vsftpd
RUN touch /var/log/vsftpd/vsftpd.log
COPY ./start.sh ./

# get ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 -keyout /etc/ssl/private/ftps-selfsigned.key \
 -out /etc/ssl/certs/ftps-selfsigned.crt \
 -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=nginx-selfsigned"


EXPOSE 21 20 21009

VOLUME /ftp

CMD ["sh", "start.sh"]
