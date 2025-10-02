#!/bin/sh
set -e

# Подставляем адреса бэкендов в nginx конфиг
envsubst '${BACKEND1} ${BACKEND2}' < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf

# Запускаем nginx (впередний процесс)
exec nginx -g 'daemon off;'
