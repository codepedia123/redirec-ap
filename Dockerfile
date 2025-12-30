FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf.template
COPY redirect.html /usr/share/nginx/html/redirect.html
CMD /bin/sh -c "envsubst '\${PORT}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"
