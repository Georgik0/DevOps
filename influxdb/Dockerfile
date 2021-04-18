# FROM alpine:latest
FROM alpine:3.12

RUN apk update
RUN apk add influxdb

COPY influxdb.conf /etc/influxdb.conf
# RUN apk update && apk upgrade && apk add --no-cache openrc && apk add vim && apk add supervisor
# RUN apk add --update influxdb
# ADD https://dl.influxdata.com/influxdb/releases/influxdb-1.5.3-static_linux_amd64.tar.gz ./

# telegraf
ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.6.3-static_linux_amd64.tar.gz ./
# RUN mkdir -p /etc/telegraf
# COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY start.sh ./

EXPOSE 8086

# CMD [ "sh", "start.sh" ]