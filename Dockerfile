FROM php:7.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-enable mysqli pdo_mysql
RUN a2enmod rewrite
RUN service apache2 restart