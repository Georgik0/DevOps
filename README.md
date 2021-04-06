# Services

## Работа с minikube:
__Запуск minikube__ \
`minikube start`


## Metallb:
__Подготовительные действия__ 
- Установка \
`minikube addons enable metallb` включаем metallb \
`eval $(minikube docker-env)` запускать docker в окружении minikube

__Еще команды для установки metallb (возможно лишнее)__ \
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

__Добавить в yaml-ы (но это не точно)__
```
annotations:
    metallb.universe.tf/allow-shared-ip: shared
```
