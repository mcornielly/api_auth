#Apache Server ########################################################
FROM php:7.2-apache

# Install some utils###################################################
RUN apt-get update && apt-get install -y libmcrypt-dev git \
    mysql-client zip unzip --no-install-recommends 

#MySQL##################################################################
RUN apt-get install -y   \
	&& pecl install mcrypt-1.0.1 \
	&& docker-php-ext-enable mcrypt \
    && docker-php-ext-install pdo_mysql 

#Composer###############################################################
RUN curl --silent --show-error https://getcomposer.org/installer | php
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

#Root###################################################################
ENV APP_HOME /var/www/html

	RUN mkdir -p /opt/data/public && \
		rm -r /var/www/html && \
		ln -s /opt/data/public $APP_HOME

RUN a2enmod rewrite 

WORKDIR $APP_HOME

