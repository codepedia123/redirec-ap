FROM nginx:alpine

# 1. Put the template in the official Nginx templates folder
COPY default.conf.template /etc/nginx/templates/default.conf.template

# 2. Put your HTML file in the standard location
COPY redirect.html /usr/share/nginx/html/redirect.html

# No CMD or Start command needed! 
# The official Nginx image will automatically:
# - Find the template
# - Swap ${PORT} for the real number
# - Start Nginx for you
