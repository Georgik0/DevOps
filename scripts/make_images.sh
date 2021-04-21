docker rmi image-nginx
docker rmi image-mysql
docker rmi image-phpmyadmin
docker rmi image-wordpress
docker rmi image-influxdb
docker rmi image-grafana
docker build -t image-nginx ./nginx
docker build -t image-phpmyadmin ./phpmyadmin
docker build -t image-mysql ./mysql
docker build -t image-wordpress ./wordpress
docker build -t image-influxdb ./influxdb
docker build -t image-grafana ./grafana
