docker rmi image-phpmyadmin
docker build -t image-phpmyadmin ./phpmyadmin
# docker run --rm -it -p 80:80 --name wp image-phpmyadmin
docker run --rm -d -p 80:80 --name wp image-phpmyadmin