# Selecting an specific image version
FROM nginx:1.10.1-alpine
# Copy static webpage files to appropriate Nginx server directory
COPY src/html /usr/share/nginx/html
# Expose port 80 to allow external access to the web server
# EXPOSE 80
# Once continer is started, run Nginx in the foreground
# CMD [ "nginx", "-g", "daemon off;" ] already done by dnginx default

