FROM nginx:alpine

# Устанавливаем envsubst для замены переменных
RUN apk add --no-cache gettext

# Копируем шаблон конфига
COPY default.conf.template /etc/nginx/templates/default.conf.template

# Создаем скрипт запуска
RUN echo '#!/bin/sh' > /start.sh && \
    echo 'envsubst < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf' >> /start.sh && \
    echo 'exec nginx -g "daemon off;"' >> /start.sh && \
    chmod +x /start.sh

EXPOSE 80

CMD ["/start.sh"]