FROM remote-host

RUN yum install -y nginx php-fpm php-mysqlnd && yum clean all

EXPOSE 80 443

VOLUME [ "/var/www/html", "/var/log/nginx", "/var/log/php-fpm", "/var/lib/php-fpm" ]

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./bin/start.sh /start.sh

RUN chmod +x /start.sh

CMD [ "/start.sh" ]
