#!/usr/bin/env bash
set -e
test -f /var/www/html/wordpress/wp-config.php && exit 0
cd /var/www/html
curl https://wordpress.org/latest.tar.gz -o ./latest.tar.gz

tar xf ./latest.tar.gz
rm ./latest.tar.gz
cd ./wordpress
chown -R www-data:www-data ./
find ./ -type d -exec chmod 755 {} \;
find ./ -type f -exec chmod 644 {} \;

cp ./wp-config-sample.php ./wp-config.php
sed -i "s/database_name_here/$MYSQL_DATABASE/" ./wp-config.php
sed -i "s/username_here/$MYSQL_USER/" ./wp-config.php
sed -i "s/password_here/$MYSQL_PASSWORD/" ./wp-config.php
sed -i "s/localhost/db/" ./wp-config.php
exit 0