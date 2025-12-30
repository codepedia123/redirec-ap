FROM nginx:alpine
# Copy the config to the standard Nginx location
COPY nginx.conf /etc/nginx/nginx.conf
# Copy your HTML file
COPY redirect.html /usr/share/nginx/html/redirect.html
# Standard start command
CMD ["nginx", "-g", "daemon off;"]
