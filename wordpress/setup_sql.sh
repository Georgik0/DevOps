# apk update
# apk add mysql mysql-client
# mkdir -p /run/mysqld
# mv my.cnf /etc/

apk add mysql mysql-client
mysql_install_db --user=mysql --datadir="/var/lib/mysql"
mv my.cnf /etc/
apk add openrc
openrc
touch /run/openrc/softlevel
rc-service mariadb start
sh create_db.sh