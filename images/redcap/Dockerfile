# RedCap installation
# 
# VERSION 1.0
#

FROM php:7.0-apache
MAINTAINER Lukas Pessl

RUN echo 'deb http://packages.dotdeb.org jessie all' > /etc/apt/sources.list.d/dotdeb.list && curl http://www.dotdeb.org/dotdeb.gpg | apt-key add -

RUN apt-get update && \
    apt-get -q -y install \
        libpng12-dev \
        imagemagick \
        libmcrypt-dev \
        php-pear \
        poppler-utils \
        catdoc \
        curl \
        php7.0-gd \
        php7.0-json \
        php7.0-ldap \
        php7.0-mbstring \
        php7.0-mysql \
        php7.0-sqlite3 \
        php7.0-xml \
        php7.0-xsl \
        php7.0-zip \
        php7.0-soap \
        mysql-client \
        libmysqlclient-dev

RUN docker-php-ext-install gd mysqli pdo pdo_mysql

RUN a2enmod php7 && a2enmod rewrite && a2enmod dav && a2enmod dav_fs

RUN pear install Log && pear channel-discover pear.dotkernel.com/zf1/svn && pear install zend/zend && pear install HTTP_WebDAV_Server-1.0.0RC8 && \
rm seeddms*

RUN chown -R www-data:www-data /var/www/html/