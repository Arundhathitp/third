# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy the static files to the working directory in the container
COPY index.html .
COPY styles.css .
COPY script.js .

# Expose the default Nginx port (80)
EXPOSE 80
EXPOSE 85

# Run the Nginx server as the default command
CMD ["nginx", "-g", "daemon off;"]
