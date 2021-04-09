#!/bin/sh

until mysql
do
	echo "NO_UP"
done

{
	echo "CREATE USER 'user'@'%' IDENTIFIED BY 'password';"
	echo "CREATE DATABASE wordpress;"
	echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'user'@'%';"
	echo "DROP DATABASE test;"
	echo "FLUSH PRIVILEGES;"
} | mysql -u root --skip-password
