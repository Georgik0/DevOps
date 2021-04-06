#!/bin/sh

/usr/bin/php -S 0.0.0.0:5050 -t /home/www/
nginx -g 'daemon off;'