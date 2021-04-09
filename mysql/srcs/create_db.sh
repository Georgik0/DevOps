#!/bin/sh

# mysql <<MYSQL_SCRIPT
# CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
# GRANT ALL ON wordpress.* TO 'wordpress_user'@'%' IDENTIFIED BY 'password';
# FLUSH PRIVILEGES;
# MYSQL_SCRIPT

mysql <<MYSQL_SCRIPT
"CREATE USER 'user'@'%' IDENTIFIED BY 'password';"
"CREATE DATABASE wordpress;"
"GRANT ALL PRIVILEGES ON wordpress.* TO 'user'@'%';"
"DROP DATABASE test;"
"FLUSH PRIVILEGES;"
MYSQL_SCRIPT
mysql wordpress -u root --password=  < wordpress.sql