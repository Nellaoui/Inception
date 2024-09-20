#!/bin/sh

service mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS don;"
mysql -e "CREATE USER IF NOT EXISTS 'donpha'@'%' IDENTIFIED BY 'donpha';"
mysql -e "GRANT ALL PRIVILEGES ON don.* TO 'donpha'@'%';"
# mysql -e "ALTER USER 'root'@'%' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"
kill $(cat /var/run/mysqld/mysqld.pid)
mysqld
