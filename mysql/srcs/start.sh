# /usr/bin/mysql_install_db --datadir=/var/lib/mysql

# /usr/bin/mysqld --user=root --init_file=/create_db

# apk add mysql mysql-client
mysql_install_db --user=mysql --datadir="/var/lib/mysql"
mv my.cnf /etc/
# apk add openrc
openrc
touch /run/openrc/softlevel
rc-service mariadb start
sh create_db.sh