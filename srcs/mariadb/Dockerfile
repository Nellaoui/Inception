FROM debian:buster

RUN apt-get update && apt-get upgrade -y

RUN apt install -y mariadb-server

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY /tools/script.sh /bin

RUN chmod +x /bin/script.sh

CMD ["sh", "bin/script.sh"]


