# Services

## Работа с minikube:
__Запуск minikube__ \
`minikube start`


## Metallb:
__Установка metallb__ \
`kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/namespace.yaml` \
`kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/metallb.yaml`

__Посмотреть статус metallb__ \
`kubectl get pods -n metallb-system`

## Поды:
__Создать под__ \
`kubectl create -f name_file.yaml`

__Удалить под по имени файла__ \
`kubectl delete -f pod name_file.yaml`

__Удалить все__ \
`kubectl delete pod --all`

__Показать всю инфу пода__ \
`kubectl describe pod name_pod`
