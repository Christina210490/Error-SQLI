# Use the PHP image
FROM php:7.4-apache

# Install mysqli extension for PHP
RUN docker-php-ext-install mysqli

# Enable mod_rewrite for Apache (optional, but useful for many PHP apps)
RUN a2enmod rewrite
