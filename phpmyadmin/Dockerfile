FROM alpine:3.7

RUN apk update
RUN apk add php7-common php7-session php7-iconv php7-json \
php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi \
fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix \
php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom
RUN apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session
RUN apk add wget vim

RUN apk add nginx
RUN adduser -D -g 'www' www
RUN mkdir www/
RUN chown -R www:www www/
RUN chown -R www:www /var/lib/nginx

# ENV PHP_FPM_USER="www"
# ENV PHP_FPM_GROUP="www"
# ENV PHP_FPM_LISTEN_MODE="0660"
# ENV PHP_MEMORY_LIMIT="512M"
# ENV PHP_MAX_UPLOAD="50M"
# ENV PHP_MAX_FILE_UPLOAD="200"
# ENV PHP_MAX_POST="100M"
# ENV PHP_DISPLAY_ERRORS="On"
# ENV PHP_DISPLAY_STARTUP_ERRORS="On"
# ENV PHP_ERROR_REPORTING="E_COMPILE_ERROR\|E_RECOVERABLE_ERROR\|E_ERROR\|E_CORE_ERROR"
# ENV PHP_CGI_FIX_PATHINFO=0



# nginx
RUN apk add openrc openssl
RUN mkdir -p /run/nginx/
RUN rm -rf /etc/nginx/conf.d/default.conf
# COPY default.conf /etc/nginx/conf.d/
# COPY fastcgi-php.conf /etc/nginx/
COPY nginx.conf /etc/nginx/nginx.conf

# RUN sed -i "s|;listen.owner\s*=\s*nobody|listen.owner = ${PHP_FPM_USER}|g" /etc/php7/php-fpm.d/www.conf \
# 	&& sed -i "s|;listen.group\s*=\s*nobody|listen.group = ${PHP_FPM_GROUP}|g" /etc/php7/php-fpm.d/www.conf \
# 	&& sed -i "s|;listen.mode\s*=\s*0660|listen.mode = ${PHP_FPM_LISTEN_MODE}|g" /etc/php7/php-fpm.d/www.conf \
# 	&& sed -i "s|user\s*=\s*nobody|user = ${PHP_FPM_USER}|g" /etc/php7/php-fpm.d/www.conf \
# 	&& sed -i "s|group\s*=\s*nobody|group = ${PHP_FPM_GROUP}|g" /etc/php7/php-fpm.d/www.conf \
# 	&& sed -i "s|;log_level\s*=\s*notice|log_level = notice|g" /etc/php7/php-fpm.d/www.conf #uncommenting line

# RUN sed -i "s|display_errors\s*=\s*Off|display_errors = ${PHP_DISPLAY_ERRORS}|i" /etc/php7/php.ini \
# && sed -i "s|display_startup_errors\s*=\s*Off|display_startup_errors = ${PHP_DISPLAY_STARTUP_ERRORS}|i" /etc/php7/php.ini \
# && sed -i "s|error_reporting\s*=\s*E_ALL & ~E_DEPRECATED & ~E_STRICT|error_reporting = ${PHP_ERROR_REPORTING}|i" /etc/php7/php.ini \
# && sed -i "s|;*memory_limit =.*|memory_limit = ${PHP_MEMORY_LIMIT}|i" /etc/php7/php.ini \
# && sed -i "s|;*upload_max_filesize =.*|upload_max_filesize = ${PHP_MAX_UPLOAD}|i" /etc/php7/php.ini \
# && sed -i "s|;*max_file_uploads =.*|max_file_uploads = ${PHP_MAX_FILE_UPLOAD}|i" /etc/php7/php.ini \
# && sed -i "s|;*post_max_size =.*|post_max_size = ${PHP_MAX_POST}|i" /etc/php7/php.ini \
# && sed -i "s|;*cgi.fix_pathinfo=.*|cgi.fix_pathinfo= ${PHP_CGI_FIX_PATHINFO}|i" /etc/php7/php.ini

COPY php.ini /etc/php7/conf.d/50-setting.ini
COPY php-fpm.conf /etc/php7/php-fpm.conf

# phpMyAdmin
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN tar -xvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN mv phpMyAdmin-4.9.0.1-all-languages /www
RUN rm -rf /var/cache/apk/*
COPY php.inc.confconfig.sample.inc.php /www/phpMyAdmin-4.9.0.1-all-languages

# get ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
 -keyout /etc/ssl/private/nginx-selfsigned.key \
 -out /etc/ssl/certs/nginx-selfsigned.crt \
 -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=nginx-selfsigned"

COPY start.sh .

EXPOSE 80

CMD [ "sh", "start.sh" ]
