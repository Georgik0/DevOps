kubectl delete service service-ftps
kubectl delete deploy ftps-deploy
docker rmi image-ftps
docker build -t image-ftps ./ftps