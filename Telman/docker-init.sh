#!/bin/sh

mysql_install_db --user=mysql --datadir="/var/lib/mysql"

nohup mysql-init.sh > /dev/null 2>&1 &

mysqld_safe --datadir="/var/lib/mysql"
