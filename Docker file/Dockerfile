# Pulls the latest ubuntu image from the docker hub if it is not already present on the local machine
FROM ubuntu

# 
LABEL maintainer="Hamza HAOUAROA <hamza.haouaria@gmail.com>"


# change the user that your app will run as
USER root

# Copy the entrypoint.sh file from the local directory to the root directory of the container
COPY ./entrypoint.sh /

RUN apt -y update && apt -y upgrade
RUN apt -y install curl bash
RUN chmod 755 /entrypoint.sh


# To protect the container from running as root we set the user to nobody
USER nobody

# The entrypoint.sh file is executed when the container is started
ENTRYPOINT [ "/entrypoint.sh" ]

# You can use CMD also
