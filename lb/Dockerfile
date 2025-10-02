FROM nginx:alpine
RUN apk add --no-cache gettext # для envsubst
COPY default.conf.template /etc/nginx/templates/default.conf.template
COPY start.sh /start.sh
RUN chmod +x /start.sh
EXPOSE 80
CMD ["/start.sh"]
