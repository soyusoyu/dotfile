FROM nginx:latest
MAINTAINER soyusoyu

RUN cp -p /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bak.`date "+%Y%m%d_%H%M%S"`
WORKDIR /var/www
