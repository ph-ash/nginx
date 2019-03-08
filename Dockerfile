FROM nginx:1-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
HEALTHCHECK --start-period=10s CMD wget -q --spider http://localhost/api/doc >/dev/null 2>/dev/null
