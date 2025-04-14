# Use nginx alpine (lightweight and efficient)
FROM nginx:alpine

# Let's remove the default nginx page
RUN rm -rf /usr/share/nginx/html/*

# We copy our files to the nginx directory
COPY index.html /usr/share/nginx/html/
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js

# Exposes port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]