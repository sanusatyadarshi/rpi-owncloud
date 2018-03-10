#!/bin/bash -x
/usr/bin/mysqld_safe &
sleep 20
/usr/bin/mysql -u root -proot123 -e "CREATE DATABASE owncloud; GRANT ALL ON owncloud.* TO 'owncloud'@'127.0.0.1' IDENTIFIED BY 'owncloudsql';"
/usr/bin/mysql -u root -proot123 -e "SET PASSWORD FOR 'owncloud'@'127.0.0.1' = PASSWORD('owncloud');"
pkill -f mysqld
