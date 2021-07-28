FROM --platform=linux/amd64 nginx:alpine
COPY ./nginx.conf /nginx.conf
COPY index.html /var/nginx/html/
CMD ["/bin/sh" , "-c" , "envsubst < /nginx.conf > /etc/nginx/nginx.conf && exec nginx -g 'daemon off;'"]