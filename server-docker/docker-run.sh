docker build --file server.Dockerfile -t our-first-server .

# -d means no attach 
docker run -d our-first-server

docker kill $(docker ps -q)


# trouble shooting docker container
docker exec d90d date


docker stop 

docker ps -a

docker rm -f $(docker ps -a -q)

# For each line you run what is after the pipe
docker ps -aq | xargs docker rm$

# docker rmi is used to remove images that are not being used by any containers
