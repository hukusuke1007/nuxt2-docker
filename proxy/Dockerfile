FROM nginx
LABEL shohei <xxxx@xxxx.xx>

COPY etc/nginx/conf.d/* /etc/nginx/conf.d/
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
