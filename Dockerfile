ARG COMPOSE_VERSION=debian-1.26.0
FROM docker/compose:${COMPOSE_VERSION}

RUN apt-get update && apt-get install --no-install-recommends -y \
    curl

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install

RUN aws --version
