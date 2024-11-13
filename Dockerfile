# Start with an official Apache image
FROM httpd:alpine

# Copy the Apache config and website files
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY desktop /usr/local/apache2/htdocs/desktop
COPY mobile /usr/local/apache2/htdocs/mobile

# Expose port 80
EXPOSE 80