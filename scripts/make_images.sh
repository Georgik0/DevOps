docker rmi image-nginx
docker rmi image-mysql
docker rmi image-wordpress
docker build -t image-nginx ./nginx
docker build -t image-mysql ./mysql
docker build -t image-wordpress ./wordpress