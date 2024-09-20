FROM debian:12

RUN apt-get update

RUN apt-get install -y php8.2-fpm php8.2 php8.2-mysql wget unzip curl

RUN wget https://wordpress.org/wordpress-6.6.1.tar.gz -P /var/www

RUN cd /var/www && tar -xzf wordpress-6.6.1.tar.gz && rm -fr wordpress-6.6.1.tar.gz

RUN chown -R www-data:www-data /var/www/wordpress

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf

COPY ./conf/config.sh /config.sh

COPY ./conf/wp-config.php /

CMD ["bash", "/config.sh"]

# CMD tail -f > /dev/null
