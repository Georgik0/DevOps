FROM alpine:3.12

RUN apk update

# telegraf
ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.6.3-static_linux_amd64.tar.gz ./
RUN tar -C . -xzf telegraf-1.6.3-static_linux_amd64.tar.gz
RUN cp telegraf/telegraf /usr/bin/
RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

# # grafana
RUN apk add grafana --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/
# RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ grafana
# RUN mv datasource.yaml /usr/share/grafana/conf/provisioning/datasources/ && \
# 	mv *.json dashboard.yaml /usr/share/grafana/conf/provisioning/dashboards/

COPY start.sh ./

EXPOSE 3000

# CMD [ "sh", "start.sh" ]