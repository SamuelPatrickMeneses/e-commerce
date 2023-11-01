FROM php:7.2-apache

# A source to find dependencies for php gd extencion(see README.md)
RUN echo $DEB_REPOSITORY >> /etc/apt/source.list

RUN apt-get update && apt-get install -y  libfreetype6-dev libjpeg62-turbo-dev libpng-dev

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions  /tmp/install-php-extensions
RUN chmod 777 /tmp/install-php-extensions
RUN  sh /tmp/install-php-extensions gd
RUN sh -c "echo 'gd.jpeg_ignore_warning = 1' >>  $PHP_INI_DIR/php.ini"   

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-enable mysqli pdo_mysql
RUN a2enmod rewrite
RUN service apache2 restart