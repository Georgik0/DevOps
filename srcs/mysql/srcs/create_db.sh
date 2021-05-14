#!/bin/sh

mysql <<MYSQL_SCRIPT
CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON wordpress.* TO 'wordpress_user'@'%' IDENTIFIED BY 'password';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

mysql wordpress -u root --password= < wordpress.sql