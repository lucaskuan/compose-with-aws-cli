ARG COMPOSE_VERSION=1.26.0
FROM docker/compose:${COMPOSE_VERSION}

RUN apk add --no-cache curl

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install

RUN aws --version
