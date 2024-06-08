minikube start

# minikube commands lets you interact with the minikube VM
# kubectl commands lets you interact with the k8s cluster

# to see that cluster info 
kubectl cluster-info

# to see the nodes in the cluster
kubectl get nodes

# to get the namespaces
kubectl get namespaces
# Namespaces let you partition resources into logical groups 
# in other words it is a way to divide cluster resources between multiple users

# Pods are the smallest deployable units in k8s
# A Pod is a group of one or more containers, with shared storage/network, and a specification for how to run the containers
kubectl get pods -A # -A flag to list pods in all namespaces
# by default, kubectl get pods will only show pods in the default namespace


# services act like a load balancer for pods
# they direct traffic to the pods
kubectl get services -A 