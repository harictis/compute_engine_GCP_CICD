# Use the official NGINX image as a base
FROM nginx:latest

# Set a default port (can be overridden by an environment variable at runtime)
ENV NGINX_PORT=80

# Copy a basic HTML page to be served by NGINX
COPY index.html /usr/share/nginx/html/index.html

# Copy a custom NGINX configuration template
COPY nginx.conf.template /etc/nginx/nginx.conf.template

# Copy the startup script
COPY startup.sh /usr/local/bin/startup.sh

# Make the startup script executable
RUN chmod +x /usr/local/bin/startup.sh

# Expose the default NGINX port
EXPOSE 80

# Start the container using the startup script
CMD ["/usr/local/bin/startup.sh"]
