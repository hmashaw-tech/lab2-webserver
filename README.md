## Lab 2 - Docker

A Docker container running an Apache web service with data being served from a 'volume'

## Setup

Container launch example:

    $ docker run -d -p 8000:80 --name webserver -v <absolute path to host directory>:/var/www/html lab2-webserver

Docker Compose example

    $ docker swarm init
    $ docker stack deploy -c docker-compose.yml lab2-webserver

    $ docker stack ls
    $ docker stack rm lab2-webserver

    $ docker swarm leave --force
    
