#!/usr/bin/env bash
# allow write permission
chmod -R a+w storage/

# php:7.3.14-apache-buster ENTRYPOINT
#docker-php-entrypoint apache2-foreground
php -S 0.0.0.0:8000 -t public
