kubectl delete service service-nginx
kubectl delete deploy nginx-deploy
docker rmi image-nginx
docker build -t image-nginx ./nginx
sh nginx_start.sh