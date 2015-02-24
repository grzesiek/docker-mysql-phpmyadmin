FROM debian:jessie
MAINTAINER Grzegorz Bizon <grzegorz.bizon@ntsn.pl>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update # upd 2015022302
RUN apt-get -y install apt-utils

# MySQL Server
RUN echo 'mysql-server mysql-server/root_password password mysql_pass' | debconf-set-selections
RUN echo 'mysql-server mysql-server/root_password_again password mysql_pass' | debconf-set-selections
RUN apt-get -y install mysql-server --no-install-recommends

RUN echo 'phpmyadmin phpmyadmin/dbconfig-install boolean true' | debconf-set-selections
RUN echo 'phpmyadmin phpmyadmin/app-password-confirm password phpmyadmin_password ' | debconf-set-selections
RUN echo 'phpmyadmin phpmyadmin/mysql/admin-pass password mysql_pass' | debconf-set-selections
RUN echo 'phpmyadmin phpmyadmin/mysql/app-pass password mysql_pass' | debconf-set-selections
RUN echo 'phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2' | debconf-set-selections

# PHPMyAdmin
RUN /etc/init.d/mysql start; apt-get -y install phpmyadmin --no-install-recommends

EXPOSE 3306
EXPOSE 80

CMD service apache2 start; mysqld_safe
