FROM nginx:1-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 8080
HEALTHCHECK --start-period=10s CMD wget -q -O /dev/null http://localhost/api/doc
