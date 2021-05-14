docker rmi image-nginx
docker build -t image-nginx ./srcs/nginx
kubectl apply -f ./srcs/yamls/nginx.yaml