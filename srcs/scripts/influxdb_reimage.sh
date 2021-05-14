docker rmi image-influxdb
docker build -t image-influxdb ./influxdb/
kubectl delete deploy influxdb-deploy
kubectl delete service service-influxdb
# kubectl apply -f ./yamls/influxdb.yaml
# docker run --rm -it -p 8086:8086 --name infl image-influxdb


# Petua
# docker rmi influxdb
# docker build -t influxdb ./influxdb/
# kubectl delete deploy influxdb
# kubectl delete service influxdb-service
# kubectl apply -f ./yamls/influxdb.yaml
# kubectl apply -f ./yamls/influxdb-pv.yaml