## Lab 2 - Docker

A Docker container running an Apache web service with data being served from a 'volume'

## Setup

Container launch example:

    $ docker run -d -p 8000:80 --name webserver -v <host www folder>:/var/www/html lab2-webserver

