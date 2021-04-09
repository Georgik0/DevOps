sh wp_stop.sh
docker build -t image-wordpress ./wordpress/
docker run --rm -it -p 5050:5050 --name wp image-wordpress