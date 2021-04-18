kubectl delete service service-wp
kubectl delete deploy wp-deploy
docker rmi image-wordpress
docker build -t image-wordpress ./wordpress/
# docker run --rm -it -p 5050:5050 --name wp image-wordpress