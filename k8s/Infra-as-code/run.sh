# save the desired state of the cluster
kubectl get namespaces

kubectl apply -f namespace.yaml

kubectl delete -f namespace.yaml