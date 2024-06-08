FROM ubuntu:latest
LABEL maintainer="Carlos Nunez <dev@carlosnunez.me>"

USER root
COPY ./web-server.bash /

RUN chmod 755 /web-server.bash

# Update package lists and install packages in a single RUN command
RUN apt-get update && apt-get install -y bash netcat-openbsd

# Switch to a non-root user
USER nobody 

ENTRYPOINT ["/web-server.bash"]
