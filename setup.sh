#------Make docker images------#
minikube start
eval $(minikube docker-env)
docker rmi $(docker images -q)
docker build -t image-telegraf ./srcs/telegraf
docker build -t image-nginx ./srcs/nginx
docker build -t image-phpmyadmin ./srcs/phpmyadmin
docker build -t image-mysql ./srcs/mysql
docker build -t image-wordpress ./srcs/wordpress
docker build -t image-influxdb ./srcs/influxdb
docker build -t image-grafana ./srcs/grafana
docker build -t image-ftps ./srcs/ftps

#--------Start metallb---------#
minikube addons enable metallb
kubectl apply -f ./yamls/my_metallb.yaml

#--------Start nginx-----------#
kubectl apply -f ./srcs/yamls/nginx.yaml
kubectl apply -f ./srcs/yamls/phpmyadmin.yaml
kubectl apply -f ./srcs/yamls/mysql.yaml
kubectl apply -f ./srcs/yamls/wordpress.yaml
kubectl apply -f ./srcs/yamls/influx-config.yaml
kubectl apply -f ./srcs/yamls/influxdb.yaml
kubectl apply -f ./srcs/yamls/grafana.yaml
kubectl apply -f ./srcs/yamls/telegraf.yaml
kubectl apply -f ./srcs/yamls/ftps.yaml
