# Use the official Nginx image as the base image
FROM nginx:alpine

# Remove the default Nginx website files
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML/CSS website files from the current directory into the Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80 to make the website accessible
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
