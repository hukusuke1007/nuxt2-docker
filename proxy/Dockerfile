FROM nginx
LABEL shohei <xxxx@xxxx.xx>

COPY etc/nginx/conf.d/* /etc/nginx/conf.d/
#CMD ["/usr/sbin/nginx ", "-g", "daemon off", "-c", "/etc/nginx/nginx.conf"]
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
