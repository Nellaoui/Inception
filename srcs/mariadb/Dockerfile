FROM debian:buster

RUN apt-get update && apt-get upgrade -y

RUN apt install -y mariadb-server

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY /tools/script.sh /bin

RUN chmod +x /bin/script.sh

# RUN service mysql start

EXPOSE 3306

CMD ["sh", "bin/script.sh"]

# CMD tail -f
# FROM debian:12

# RUN apt update && apt upgrade -y 

# RUN apt install -y mariadb-server

# COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/

# COPY ./tools/script.sh /bin/

# COPY ./tools/init.sql /tmp/init.sql

# RUN mkdir -p /run/mysqld

# EXPOSE 3306

# ENTRYPOINT ["sh", "/bin/script.sh"]

# CMD tail -f
