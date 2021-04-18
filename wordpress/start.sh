#!/bin/sh


# nginx -s reload
# killall -KILL php-fpm7

# /usr/sbin/php-fpm7
# sh startsql.sh
# /usr/bin/php -S 0.0.0.0:5050 -t /home/www/
php-fpm7
nginx -g 'daemon off;'

# /bin/sh -c /usr/sbin/php-fpm7
# exec nginx -g 'daemon off;'

# nginx -g 'daemon off;'