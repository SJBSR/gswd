# Selecting an specific image version
FROM nginx:alpine


COPY nginx.conf /etc/nginx/nginx.conf
# COPY _site /usr/share/nginx/html
COPY ads.txt /usr/share/nginx/html

EXPOSE 80

HEALTHCHECK --interval=15s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://127.0.0.1/health || exit 1

# Edited Documentation
# Copy static webpage files to appropriate Nginx server directory
# COPY src/html /user/share/nginx/html
# Expose port 80 to allow external access to the web server
# EXPOSE 80
# Once continer is started, run Nginx in the foreground
# CMD [ "nginx", "-g", "daemon off;" ] already done by dnginx default

