# FROM alpine:latest
FROM alpine:3.12

RUN apk update
RUN apk add influxdb wget

# COPY influxdb.conf /etc/influxdb.conf
# RUN apk update && apk upgrade && apk add --no-cache openrc && apk add vim && apk add supervisor
# RUN apk add --update influxdb
# ADD https://dl.influxdata.com/influxdb/releases/influxdb-1.5.3-static_linux_amd64.tar.gz ./

# telegraf
# ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.6.3-static_linux_amd64.tar.gz ./
# RUN mkdir -p /etc/telegraf
# COPY ./telegraf.conf /etc/telegraf/telegraf.conf

# telegraf
# ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.6.3-static_linux_amd64.tar.gz ./
# RUN tar -C . -xzf telegraf-1.6.3-static_linux_amd64.tar.gz
# RUN cp telegraf/telegraf /usr/bin/
# RUN mkdir -p /etc/telegraf
# COPY ./telegraf.conf /etc/telegraf/telegraf.conf

#------------petua----------------
# install telegraf
# RUN	wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.1_static_linux_amd64.tar.gz && \
# 	tar -xzf telegraf-1.16.1_static_linux_amd64.tar.gz && \
# 	cp -r /telegraf-1.16.1/* / && \
# 	rm -rf /telegraf-1.16.1/ telegraf-1.16.1_static_linux_amd64.tar.gz

# copy sources
# COPY srcs/supervisord.conf /etc/supervisord.conf
# COPY srcs/telegraf.conf /etc/telegraf/telegraf.conf
#------------petua----------------

COPY start.sh ./

EXPOSE 8086

# CMD /usr/sbin/influxd
CMD [ "sh", "start.sh" ]