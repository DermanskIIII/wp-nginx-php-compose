# wp-nginx-php-compose

Развернуть WordPress в Docker, используя только стандартные образы
php:8.2-fpm (или выше) и nginx:latest.

Необходимо создать docker-compose.yml, который поднимет
следующие сервисы:
▪ nginx с пробросом портов
▪ php-fpm с необходимыми зависимостями
▪ mysql
