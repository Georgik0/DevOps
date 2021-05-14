FROM alpine:3.12

RUN apk update

# grafana
RUN apk add grafana --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY ./default.ini /usr/share/grafana/conf/default.ini
COPY ./grafana.db /usr/share/grafana/data/grafana.db
COPY start.sh ./

EXPOSE 3000

CMD [ "sh", "start.sh" ]