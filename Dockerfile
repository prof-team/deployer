FROM php:7.2-alpine

RUN apk update && apk upgrade

RUN apk add --no-cache nano htop curl openssh-client bash git openssh

RUN curl -LO http://deployer.org/releases/v3.3.0/deployer.phar && \
    mv deployer.phar /usr/local/bin/dep && \
    chmod +x /usr/local/bin/dep

WORKDIR /var/www
