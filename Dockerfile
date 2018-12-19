FROM nginx:1-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 8080
