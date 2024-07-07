FROM wordpress:6.5.5-php8.3

COPY ./src/html-wp.tar.gz /root/html.tar.gz

RUN tar -zxf /root/html.tar.gz -C /root
RUN rm -rf /var/www/html/*
RUN cp -r /root/html/* /var/www/html/
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 775 /var/www/html

CMD ["apache2-foreground"]
