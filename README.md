# docker-phpmyadmin-mysql

Simple yet sufficient MySQL with PHPMyAdmin docker image.

## Build

    docker build -t grzesiek/mysql-phpmyadmin .

## Run

If you don't have local webserver and MySQL:

    docker run -d --name mysql-phpmyadmin -p 127.0.0.1:80:80 -p 127.0.0.1:3306:3306

otherwise

    docker run -d --name mysql-phpmyadmin -p 127.0.0.1:8080:80 -p 127.0.0.1:3307:3306

## start / stop

    docker stop mysql-phpmyadmin
    docker start mysql-phpmyadmin

## License

MIT
