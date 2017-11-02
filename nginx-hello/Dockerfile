FROM nginx

RUN rm -v /etc/nginx/nginx.conf
ADD  ./nginx.conf /etc/nginx/
RUN mkdir -p /var/www
RUN echo "Hello" > /var/www/index.html

EXPOSE 80 8080 82 443

CMD service nginx start
#CMD sleep 1000
