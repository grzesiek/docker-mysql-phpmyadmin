# docker-mysql-phpmyadmin

Simple yet sufficient MySQL with PhpMyAdmin docker image

## Build

  * build from docker hub registry:

        docker build -t grzesiekb/mysql-phpmyadmin

  * build from cloned git repository:
    
        git clone https://github.com/grzesiek/docker-mysql-phpmyadmin.git
        cd docker-mysql-phpmyadmin
        docker build -t grzesiekb/mysql-phpmyadmin .

## Run

If you don't have local webserver and MySQL:

    docker run -d --name mysql-phpmyadmin -p 127.0.0.1:80:80 -p 127.0.0.1:3306:3306 grzesiekb/mysql-phpmyadmin

otherwise

    docker run -d --name mysql-phpmyadmin -p 127.0.0.1:8080:80 -p 127.0.0.1:3307:3306 grzesiekb/mysql-phpmyadmin

## Passwords

If you are building from Dockerfile you can change passwords editing `debconf-set-selections` lines.
So you can change default MySQL root password `mysql_pass` to something else.

## start / stop

    docker stop mysql-phpmyadmin
    docker start mysql-phpmyadmin

## License

MIT
