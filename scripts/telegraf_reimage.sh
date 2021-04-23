# kubectl delete service service-telegraf
kubectl delete deploy telegraf
docker rmi telegraf_service
docker build -t telegraf_service ./telegraf
# docker rmi image-telegraf
# docker build -t image-telegraf ./telegraf
kubectl apply -f ./yamls/telegraf.yaml