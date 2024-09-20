FROM debian:buster

RUN apt-get update -y

RUN apt-get install nginx -y

RUN apt-get install curl -y

RUN apt-get install vim -y

RUN mkdir -p /etc/nginx/ssl

RUN apt-get install openssl -y

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=IDF/L=1337MED/O=42/OU=42/CN=nelallao.42.fr/UID=nelallao"

RUN mkdir -p /var/run/nginx

RUN mkdir -p /etc/nginx/

COPY ./conf/conf.d/nginx.conf /etc/nginx/conf.d/nginx.conf

COPY ./index.html /var/www/html

EXPOSE 443:443

ENTRYPOINT ["nginx", "-g", "daemon off;"]