FROM nginx

RUN rm -v /etc/nginx/nginx.conf
ADD  ./nginx.conf /etc/nginx/
RUN mkdir -p /var/www
RUN echo "GoodBye" > /var/www/index.html

EXPOSE 80 8080 81 443

CMD service nginx start
#CMD sleep 1000
