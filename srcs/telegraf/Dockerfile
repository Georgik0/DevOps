FROM alpine:3.12
RUN apk update
RUN apk add telegraf --repository http://dl-cdn.alpinelinux.org/alpine/v3.13/community

COPY ./telegraf.conf /etc/telegraf/telegraf.conf

CMD ["telegraf"]