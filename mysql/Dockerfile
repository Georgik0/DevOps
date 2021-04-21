FROM alpine:3.7

COPY ./srcs ./

RUN apk update
RUN apk add --no-cache mysql mysql-client openrc
RUN mkdir -p /run/mysqld
RUN mv my.cnf /etc/

# telegraf
ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.6.3-static_linux_amd64.tar.gz ./
RUN tar -C . -xzf telegraf-1.6.3-static_linux_amd64.tar.gz
RUN cp telegraf/telegraf /usr/bin/
RUN mkdir -p /etc/telegraf
RUN mv ./telegraf.conf /etc/telegraf/telegraf.conf

EXPOSE 3306

CMD sh start.sh
