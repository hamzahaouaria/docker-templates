# To clean up docker you may want to do the following
docker system prune -a
# Remove unused images with
docker rmi $(docker images -q -f dangling=true)
# Remove all images
docker rmi -f $(docker images -q)
# Remove all containers
docker rm $(docker ps -a -q)

# use docker stats to see the resource usage of containers
docker stats <container_id> or <container_name>
# use docker inspect to see the details of a container
docker inspect <container_id>
# output of inspect is in json format
# use docker logs to see the logs of a container
docker logs <container_id>
docker exec -i -t <container_id> or <container_name> sh

# to see the processes running in a container
docker top <container_id> or <container_name> 

