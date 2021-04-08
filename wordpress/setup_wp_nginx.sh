apk update
apk add nginx openrc openssl
mkdir -p /run/nginx/
mkdir /home/www/
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 -keyout /etc/ssl/private/nginx-selfsigned.key \
 -out /etc/ssl/certs/nginx-selfsigned.crt \
 -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=nginx-selfsigned"

apk add php7 php7-fpm php7-mysqli wget
apk add php7-opcache php7-zlib php7-curl php7-mbstring php7-json php7-session
wget http://wordpress.org/latest.tar.gz
mv latest.tar.gz /home/www/
tar -xzvf /home/www/latest.tar.gz
rm /home/www/latest.tar.gz