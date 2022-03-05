FROM php:7.2-apache
COPY static/ /var/www/html/
RUN chown -R www-data:www-data /var/www/html
RUN a2enmod rewrite
EXPOSE 80
CMD ["apache2-foreground"]