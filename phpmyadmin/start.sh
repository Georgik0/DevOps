#!/bin/sh

php-fpm7
nginx -g 'daemon off;'
# /usr/sbin/nginx -c /etc/nginx/nginx.conf