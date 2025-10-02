# service1/Dockerfile и service2/Dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/
COPY lander.html /usr/share/nginx/html/  # Добавьте эту строку
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]