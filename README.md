## Lab 2 - Docker Webserver

A Docker container running an Apache web service with data being served from a host volume

### Usage

Container launch example:

    $ docker run -d -p <port>:80 \
        --name <container name> \
        -v <absolute path to host directory>:/var/www/html markshaw/lab2-webserver:1.0

Docker Compose example

    $ docker swarm init
    $ docker stack deploy -c docker-compose.yml lab2-webserver

    $ docker stack ls
    $ docker stack rm lab2-webserver

    $ docker swarm leave --force
    
