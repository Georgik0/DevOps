FROM alpine:3.7

COPY ./srcs ./

RUN apk update
RUN apk add --no-cache mysql mysql-client openrc
RUN mkdir -p /run/mysqld
RUN mv my.cnf /etc/

EXPOSE 3306

CMD sh start.sh
