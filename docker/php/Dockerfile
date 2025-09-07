FROM php:8.2.29-fpm

# Install git and common tools
RUN apt-get update && apt-get install -y \
    git unzip zip libzip-dev \
 && docker-php-ext-install pdo pdo_mysql \
 && rm -rf /var/lib/apt/lists/*

# Copy custom php.ini
COPY ./docker/php/php.ini /usr/local/etc/php/conf.d/php.ini

# Set working dir
WORKDIR /www

# Copy composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

