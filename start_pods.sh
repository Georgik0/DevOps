#------Make docker images------#
eval $(minikube docker-env)
sh make_images.sh

#--------Start metallb---------#
minikube addons enable metallb
kubectl apply -f my_metallb.yaml

#--------Start nginx-----------#
kubectl apply -f nginx.yaml
kubectl apply -f mysql.yaml
kubectl apply -f wordpress.yaml