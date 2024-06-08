docker build -t volumes-data-mapping -f volume.Dockerfile .

 docker rm -f cont-vol-cool && docker run  --name cont-vol-cool -t volumes-data-mapping 

docker rm -f cont-vol-cool && docker run -v "/mnt/c/Users/hamza/project/docker-templates/volumes-data-mapping/data:/tmp" --name cont-vol-cool -t volumes-data-mapping  

docker rm -f cont-vol-cool

docker rm $(docker ps -a -q )


docker build -t hello-container . -f volume.Dockerfile


docker run -v $(pwd)/data:/data hello-container


