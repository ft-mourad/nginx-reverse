FROM nginx

RUN rm -v /etc/nginx/nginx.conf
COPY  nginx.conf /etc/nginx/
COPY  tls.key /etc/nginx/
COPY  tls.crt /etc/nginx/

RUN mkdir -p /var/www \
    && echo "Proxy" > /var/www/index.html

EXPOSE 80 8080 81 82 443

CMD service nginx start
#CMD sleep 1000
