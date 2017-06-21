FROM 3scale/openresty
RUN apt-get update && apt-get install -y redis-server
RUN mkdir /var/log/nginx && chmod 0777 /var/log/nginx
COPY openresty.conf /etc/supervisor/conf.d/
COPY nginx.conf /opt/openresty/nginx/conf/nginx.conf
