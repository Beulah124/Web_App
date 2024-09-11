#Use the official nginx image from the Docker Hub
FROM nginx:alpine

# Copy the current directory contents into the container at /usr/share/nginx/html
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 81

# Start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
