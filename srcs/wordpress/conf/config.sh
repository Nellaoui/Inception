#!/bin/bash
sleep 5
# if [ ! -f /var/www/wordpress/wp-config.php ]; then
#     {
        wp core download --allow-root --path=/var/www/wordpress/
        mv /wp-config.php /var/www/wordpress/
        wp core install   --url=$(DOMAIN_NAME)  --title=$(TITLE) --admin_user=$(ADMIN_USER) --admin_password=$(ADMIN_PASSWORD) --admin_email=$(ADMIN_EMAIL) --skip-email --allow-root --path=/var/www/wordpress/ 

        # wp user create $WP_USER $WP_EMAIL --role=author --user_pass=$WP_PASSWD --allow-root
        echo "wordpress installes succes"
#     }
# else
    # echo "WordPress already installed, skipping installation..."
# fi

php-fpm8.2 -F
# Uncomment this line to create an additional user
# wp --allow-root user create $WP_USER $WP_EMAIL --role=author --user_pass=$WP_PASSWORD
