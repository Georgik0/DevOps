kubectl delete service service-telegraf
kubectl delete deploy telegraf-deploy
docker rmi image-telegraf
docker build -t telegraf_service ./telegraf
# docker rmi image-telegraf
# docker build -t image-telegraf ./telegraf
kubectl apply -f ./yamls/telegraf.yaml