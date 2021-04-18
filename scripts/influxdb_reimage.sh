docker rmi image-influxdb
docker build -t image-influxdb ./influxdb/
docker run --rm -it -p 8086:8086 --name infl image-influxdb