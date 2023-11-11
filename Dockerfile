# Use the official Nginx base image
FROM nginx:latest

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy the custom HTML file to the Nginx web root
COPY index.html /usr/share/nginx/html/

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
