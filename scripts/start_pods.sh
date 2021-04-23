#------Make docker images------#
eval $(minikube docker-env)
sh ./scripts/make_images.sh
# docker rmi image-grafana
# docker build -t image-grafana ./grafana

#--------Start metallb---------#
minikube addons enable metallb
kubectl apply -f ./yamls/my_metallb.yaml

#--------Start nginx-----------#
kubectl apply -f ./yamls/nginx.yaml
kubectl apply -f ./yamls/phpmyadmin.yaml
kubectl apply -f ./yamls/mysql.yaml
kubectl apply -f ./yamls/wordpress.yaml
kubectl apply -f ./yamls/influxdb.yaml
kubectl apply -f ./yamls/grafana.yaml
kubectl apply -f ./yamls/telegraf.yaml