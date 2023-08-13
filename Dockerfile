# Use an official NGINX image as the base image
FROM nginx:alpine

# Copy the HTML and CSS files into the NGINX web server directory
COPY app /usr/share/nginx/html

# Expose port 80 to allow external access
EXPOSE 80

# Command to start NGINX when the container is run
CMD ["nginx", "-g", "daemon off;"]
