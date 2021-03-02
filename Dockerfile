# Container image that runs your code
FROM ubuntu:18.04 
RUN apt-get update && apt-get install -y curl unzip python3 build-essential libbsd-dev valgrind \
    && apt-get clean



# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/bin/sh", "-l", "/entrypoint.sh"]
