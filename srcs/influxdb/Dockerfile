FROM alpine:3.12

RUN apk update
RUN apk add influxdb openrc wget

EXPOSE 8086

VOLUME /var/lib/influxdb

CMD ["influxd"]