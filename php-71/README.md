# Base image for PHP 7.1 FPM

Based on centos7 image. 
Installs PHP 7.1 and following extensions:
 * php-bcmath
 * php-cli
 * php-mcrypt
 * php-memcached
 * php-curl
 * php-fpm
 * php-gd
 * php-iconv
 * php-intl
 * php-mysql
 * php-mbstring
 * php-pdo
 * php-process
 * php-soap
 * php-pecl-zip
 * php-xml
 * php-pecl-xdebug

Also PHP timezone is set to Europe/Vilnius, error display - stderr.

## Environment variables
You can customize PHP with following varibles:
 * PHP_ARGS - additional arguments for php-fpm
