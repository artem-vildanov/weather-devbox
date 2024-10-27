FROM php:8.1.17-fpm

# Обновляем систему и устанавливаем необходимые пакеты
RUN apt update && apt install -y \
    openssl \
    unzip \
    git \
    libzip-dev \
    libpq-dev \
    && docker-php-ext-install \
    pdo \
    pdo_mysql \
    opcache \
    zip

# Устанавливаем Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer