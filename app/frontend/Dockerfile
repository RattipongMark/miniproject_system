FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
# Minimal nginx config to proxy API requests to backend
RUN echo 'server { \
    listen 80; \
    location / { \
        root /usr/share/nginx/html; \
        index index.html; \
    } \
    location /api/ { \
        proxy_pass http://backend:5000; \
    } \
}' > /etc/nginx/conf.d/default.conf
EXPOSE 80
