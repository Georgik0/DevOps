# docker rmi $(docker images -q)
# docker rmi image-nginx
# docker rmi image-mysql
# docker rmi image-phpmyadmin
# docker rmi image-wordpress
# docker rmi image-influxdb
# docker rmi image-grafana
# docker rmi image-ftps
# docker rmi image-telegraf
# docker rmi telegraf_service

# docker rmi telegraf_img
# docker rmi inflx_img

docker build -t image-telegraf ./telegraf
# docker build -t telegraf_img ./telegraf

docker build -t image-nginx ./nginx
docker build -t image-phpmyadmin ./phpmyadmin
docker build -t image-mysql ./mysql
docker build -t image-wordpress ./wordpress

# docker build -t inflx_img ./influxdb
docker build -t image-influxdb ./influxdb

docker build -t image-grafana ./grafana
docker build -t image-ftps ./ftps