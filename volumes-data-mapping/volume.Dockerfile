FROM ubuntu

USER root

# Create a directory for the persistent file
RUN mkdir -p /data

# Create a file with the desired content
RUN echo "hello from container" > /data/hello.txt

USER nobody

# Command to print the content of the file
CMD ["cat", "/data/hello.txt"]