FROM nginx:alpine

# Copy the static file
COPY index.html /usr/share/nginx/html/index.html

# Write a clean nginx config
# Using a variable for proxy_pass prevents nginx from crashing if backend is not yet ready
RUN printf 'server {\n\
    listen 80;\n\
    location / {\n\
        root /usr/share/nginx/html;\n\
        index index.html;\n\
    }\n\
    location /api/ {\n\
        resolver 127.0.0.11 valid=30s;\n\
        set $upstream_backend backend;\n\
        proxy_pass http://$upstream_backend:5000;\n\
    }\n\
}\n' > /etc/nginx/conf.d/default.conf

EXPOSE 80
