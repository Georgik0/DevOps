FROM alpine:3.12

RUN apk update

# telegraf
# ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.6.3-static_linux_amd64.tar.gz ./
# RUN tar -C . -xzf telegraf-1.6.3-static_linux_amd64.tar.gz
# RUN cp telegraf/telegraf /usr/bin/
# RUN mkdir -p /etc/telegraf
# COPY ./telegraf.conf /etc/telegraf/telegraf.conf

# grafana
RUN apk add grafana --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY ./default.ini /usr/share/grafana/conf/default.ini
COPY ./grafana.db /usr/share/grafana/data/grafana.db
# COPY ./jsons/*.json /usr/share/grafana/conf/provisioning/dashboards/
# COPY datasource.yaml /usr/share/grafana/conf/provisioning/datasources/
# COPY dashboard.yaml /usr/share/grafana/conf/provisioning/dashboards/
# RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ grafana
# RUN mv datasource.yaml /usr/share/grafana/conf/provisioning/datasources/ && \
# 	mv *.json dashboard.yaml /usr/share/grafana/conf/provisioning/dashboards/

# Petua
# RUN apk add wget
# RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
# RUN	wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.32-r0/glibc-2.32-r0.apk
# RUN	apk add glibc-2.32-r0.apk

# # install grafana
# RUN wget https://dl.grafana.com/oss/release/grafana-7.2.2.linux-amd64.tar.gz && \
# 	tar -xzvf grafana-7.2.2.linux-amd64.tar.gz && \
# 	cp -r grafana-7.2.2/* ./ && \
# 	rm -rf grafana-7.2.2.linux-amd64.tar.gz grafana-7.2.2

COPY start.sh ./

EXPOSE 3000

CMD [ "sh", "start.sh" ]