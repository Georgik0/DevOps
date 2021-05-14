mysql_install_db --user=mysql --datadir="/var/lib/mysql"
openrc
touch /run/openrc/softlevel
rc-service mariadb start
sh create_db.sh
rc-service mariadb stop
mysqld_safe --datadir="/var/lib/mysql"