FROM ubuntu:18.04
LABEL Description="This image is being used for bootcamp exercise"  MAINTAINER="anshul <anshul.rana@tothenew.com>"
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install nginx -y
RUN apt-get install curl -y
RUN apt-get install net-tools -y
RUN apt-get install vim -y
RUN apt-get install wget -y
RUN rm /etc/nginx/sites-enabled/default
COPY mysite /etc/nginx/sites-enabled/anshul
RUN mkdir -p /var/www/html/mysite
COPY ./index.html /var/www/html/mysite
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


