FROM nginx:latest

# Copy the nginx configuration file
COPY . /usr/share/nginx/html
EXPOSE 80

