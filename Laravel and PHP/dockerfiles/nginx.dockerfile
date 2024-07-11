FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.docker

COPY nginx/nginx.conf .

RUN mv nginx.conf default.conf

WORKDIR /var/www/html

COPY src .

# no need to specify any CMD as the default command to run/start the server will be used from the base image