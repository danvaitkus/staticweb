FROM ubuntu:14.04
MAINTAINER Docker Education Team <education@docker.com>

RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hello again! I am still in your container' \
    >/usr/share/nginx/html/index.html

CMD [ "nginx", "-g", "daemon off;" ]

EXPOSE 80
