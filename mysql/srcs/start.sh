# /usr/bin/mysql_install_db --datadir=/var/lib/mysql

# /usr/bin/mysqld --user=root --init_file=/create_db

mysql_install_db --user=mysql --datadir="/var/lib/mysql"
openrc
touch /run/openrc/softlevel
rc-service mariadb start
sh create_db.sh
rc-service mariadb stop
mysqld_safe --datadir="/var/lib/mysql"



# mysql_install_db --user=mysql --datadir="/var/lib/mysql"

# nohup mysql-init.sh > /dev/null 2>&1 &

# mysqld_safe --datadir="/var/lib/mysql"

# openrc default
# mysql_install_db
# rc-service mariadb start
# sh create_db.sh
# rc-service mariadb stop
# mysqld_safe --datadir="/var/lib/mysql"
# /usr/bin/supervisord -c /etc/supervisord.conf