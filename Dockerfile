# Container image that runs your code
FROM alpine:3.10

WORKDIR /app

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /app/entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["sh", "/app/entrypoint.sh"]
