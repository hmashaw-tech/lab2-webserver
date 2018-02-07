# Base image
FROM ubuntu

LABEL maintainer="hs4706@rit.edu"

RUN apt-get update && apt-get -y upgrade && apt-get -y install \
    apache2 \
    curl \
    vim

# Environment variables
ENV APACHE_LOCK_DIR=/var/lock/apache2 \
    APACHE_LOG_DIR=/var/log/apache2 \
    APACHE_PID_FILE=/var/run/apache2/apache2.pid \
    APACHE_RUN_DIR=/var/run/apache2 \
    APACHE_RUN_GROUP=www-data \
    APACHE_RUN_USER=www-data

RUN mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR

# Expose apache
EXPOSE 80

# Start Apache in Foreground
CMD ["apache2", "-DFOREGROUND"]
