minikube addons enable ingress
minikube addons enable metrics-server
eval $(minikube docker-env)
docker build -t mynginx srcs/nginx/
docker build -t myftps srcs/ftps/
docker build -t my-grafana srcs/grafana
docker build -t my-phpmyadmin:1.1 srcs/phpmyadmin
docker build -t my-wordpress:1.5 srcs/wordpress/
kubectl apply -k srcs
kubectl get svc