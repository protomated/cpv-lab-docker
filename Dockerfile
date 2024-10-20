# Base image
FROM php:8.2-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libmcrypt-dev \
    libicu-dev \
    libxml2-dev \
    libzip-dev \
    zlib1g-dev \
    unzip \
    wget \
    nano

# Install PHP extensions
RUN docker-php-ext-install -j$(nproc) \
    bcmath \
    gd \
    intl \
    mysqli \
    opcache \
    pdo_mysql \
    zip \
    && docker-php-ext-enable \
    bcmath \
    gd \
    intl \
    mysqli \
    opcache \
    pdo_mysql \
    zip

# Install ionCube Loader for both AMD64 and ARM64
RUN cd /tmp && \
    if [ "$(uname -m)" = "x86_64" ]; then \
        wget https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz && \
        tar xvfz ioncube_loaders_lin_x86-64.tar.gz && \
        PHP_EXT_DIR=$(php -i | grep extension_dir | awk '{print $3}') && \
        cp ioncube/ioncube_loader_lin_8.2.so $PHP_EXT_DIR && \
        echo "zend_extension = $PHP_EXT_DIR/ioncube_loader_lin_8.2.so" > /usr/local/etc/php/conf.d/00-ioncube.ini; \
    elif [ "$(uname -m)" = "aarch64" ]; then \
        wget https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_aarch64.tar.gz && \
        tar xvfz ioncube_loaders_lin_aarch64.tar.gz && \
        PHP_EXT_DIR=$(php -i | grep extension_dir | awk '{print $3}') && \
        cp ioncube/ioncube_loader_lin_8.2.so $PHP_EXT_DIR && \
        echo "zend_extension = $PHP_EXT_DIR/ioncube_loader_lin_8.2.so" > /usr/local/etc/php/conf.d/00-ioncube.ini; \
    else \
        echo "Unsupported architecture: $(uname -m)"; exit 1; \
    fi && \
    rm -rf ioncube*

# Configure PHP
RUN echo "memory_limit = 256M" > /usr/local/etc/php/conf.d/memory-limit.ini

# Enable Apache modules
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy application files
COPY ./cpv-lab-files /var/www/html

# Set permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]