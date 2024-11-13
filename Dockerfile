# Use the official Nginx image
FROM nginx:alpine

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the project files
COPY desktop /usr/share/nginx/html/desktop
COPY mobile /usr/share/nginx/html/mobile

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
