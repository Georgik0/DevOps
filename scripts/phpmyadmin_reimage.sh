kubectl delete service service-phpmyadmin
kubectl delete deploy phpmyadmin-deploy
docker rmi image-phpmyadmin
docker build -t image-phpmyadmin ./phpmyadmin
# docker run --rm -it -p 5000:5000 --name wp image-phpmyadmin
# docker run --rm -d -p 5000:5000 --name wp image-phpmyadmin
kubectl apply -f ./yamls/phpmyadmin.yaml