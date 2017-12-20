FROM nginx:1.12.1

ADD nginx.conf /etc/nginx/

RUN adduser -D -H -u 1000 -s /bin/bash www-data
RUN mkdir /etc/nginx/sites-available

CMD ["nginx"]

EXPOSE 80 443