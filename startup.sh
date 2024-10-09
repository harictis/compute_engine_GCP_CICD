#!/bin/sh

# Substitute the NGINX_PORT environment variable into the nginx.conf
envsubst '$NGINX_PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start NGINX
nginx -g 'daemon off;'
