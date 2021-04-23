FROM alpine:3.12

RUN apk update

# telegraf
ADD https://dl.influxdata.com/telegraf/releases/telegraf-1.6.3-static_linux_amd64.tar.gz ./
RUN tar -C . -xzf telegraf-1.6.3-static_linux_amd64.tar.gz
RUN cp telegraf/telegraf /usr/bin/
RUN mkdir -p /etc/telegraf
# COPY ./telegraf.conf /etc/telegraf/telegraf.conf

CMD /usr/bin/telegraf --config /etc/telegraf/telegraf.conf
# CMD telegraf
# CMD [ "sh", "start.sh" ]