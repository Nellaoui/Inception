#!/bin/bash
sleep 10
if [ ! -f /var/www/wordpress/wp-config.php ]; then
    {
        wp core download --allow-root --path=/var/www/wordpress/
        mv /wp-config.php /var/www/wordpress/
        sed -i "s/db-name/${SQL_DATABASE}/g" /var/www/wordpress/wp-config.php
        sed -i "s/db-user/${SQL_USER}/g" /var/www/wordpress/wp-config.php
        sed -i "s/db-password/${SQL_PASSWORD}/g" /var/www/wordpress/wp-config.php
        sed -i "s/dbhost/${SQL_HOST}/g" /var/www/wordpress/wp-config.php
        wp core install   --url=${DOMAIN_NAME}  --title=${TITLE} --admin_user=${ADMIN_USER} --admin_password=${ADMIN_PASSWORD} --admin_email=${ADMIN_EMAIL} --skip-email --allow-root --path=/var/www/wordpress/ 
        # wp user create $WP_USER $WP_EMAIL --role=author --user_pass=$WP_PASSWD --allow-root
        echo "wordpress installes succes"
    }
else
    echo "WordPress already installed, skipping installation..."
fi

wp --allow-root user create $WP_USER $WP_EMAIL --role=author --user_pass=$WP_PASSWORD
php-fpm8.2 -F
