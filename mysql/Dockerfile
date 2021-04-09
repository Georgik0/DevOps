FROM alpine:3.7

COPY ./srcs ./

RUN apk update
RUN apk add mysql mysql-client openrc
# RUN mkdir -p /run/mysqld
RUN mv my.cnf /etc/

# apk update
# apk add mysql mysql-client
# mkdir -p /run/mysqld --------
# mv my.cnf /etc/ --------
# mysql_install_db --user=mysql --datadir="/var/lib/mysql"
# apk add openrc
# mysql_install_db --user=mysql --datadir=/var/lib/mysql
# openrc
# touch /run/openrc/softlevel
# rc-service mariadb start
# mysql

EXPOSE 3306

CMD sh start.sh
