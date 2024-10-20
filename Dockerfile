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

# Install ionCube Loader for x86_64
RUN if [ "$(uname -m)" = "x86_64" ]; then \
    cd /tmp && \
    wget https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz && \
    tar xvfz ioncube_loaders_lin_x86-64.tar.gz && \
    PHP_EXT_DIR=$(php-config --extension-dir) && \
    mkdir -p $PHP_EXT_DIR && \
    cp ioncube/ioncube_loader_lin_8.2.so $PHP_EXT_DIR && \
    echo "zend_extension = $PHP_EXT_DIR/ioncube_loader_lin_8.2.so" > /usr/local/etc/php/conf.d/00-ioncube.ini && \
    rm -rf ioncube*; \
    fi

# Install ionCube Loader for aarch64
RUN if [ "$(uname -m)" = "aarch64" ]; then \
    cd /tmp && \
    wget https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_aarch64.tar.gz && \
    tar xvfz ioncube_loaders_lin_aarch64.tar.gz && \
    PHP_EXT_DIR=$(php-config --extension-dir) && \
    mkdir -p $PHP_EXT_DIR && \
    cp ioncube/ioncube_loader_lin_8.2.so $PHP_EXT_DIR && \
    echo "zend_extension = $PHP_EXT_DIR/ioncube_loader_lin_8.2.so" > /usr/local/etc/php/conf.d/00-ioncube.ini && \
    rm -rf ioncube*; \
    fi

# Configure PHP
RUN echo "memory_limit = 256M" > /usr/local/etc/php/conf.d/memory-limit.ini

# Enable Apache modules
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy application files
COPY ./cpv-lab-files /var/www/html

# Set specific permissions
RUN chmod 666 /var/www/html/lib/db_params.php && \
    chmod 666 /var/www/html/license/license.php && \
    chmod -R 777 /var/www/html/mobiledata/cache && \
    chmod -R 777 /var/www/html/smarty/templates_c && \
    chmod -R 777 /var/www/html/phpbrowscap/BrowserCache && \
    chmod -R 777 /var/www/html/WURFLres && \
    chmod -R 777 /var/www/html/WURFLres/storage/cache && \
    chmod -R 777 /var/www/html/WURFLres/storage/persistence

# Set general permissions
RUN chown -R www-data:www-data /var/www/html && \
    find /var/www/html -type d -exec chmod 755 {} \; && \
    find /var/www/html -type f -exec chmod 644 {} \;

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]