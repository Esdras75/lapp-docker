FROM ubuntu/apache2:2.4-22.04_beta
RUN apt-get update && \
    apt-get install -y \
    php \
    libapache2-mod-php \
    php-soap \
    php-xml \
    php-curl \
    php-opcache \
    php-gd \
    php-sqlite3 \
    php-mbstring \
    rpl \
    zip \
    unzip \
    git \
    vim \
    curl
RUN echo -e "error_log = /tmp/php_errors.log\ndisplay_errors = Onmemory_limit = 256M\nmax_execution_time = 120\nerror_reporting = E_ALL\nfile_uploads = On\npost_max_size = 100M\nupload_max_filesize = 100M\nsession.gc_maxlifetime = 14000" >> /etc/php/8.1/apache2/php.ini

EXPOSE 80