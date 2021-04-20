docker rmi image-grafana
docker build -t image-grafana ./grafana
# docker run --rm -p 3000:3000 -it --name grafana image-grafana