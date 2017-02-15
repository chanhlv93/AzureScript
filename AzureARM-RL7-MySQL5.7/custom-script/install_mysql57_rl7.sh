#!/bin/bash

sudo wget https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm

sudo yum localinstall -y mysql57-community-release-el7-9.noarch.rpm

sudo yum repolist enabled | grep "mysql.*-community.*"

sudo yum install -y mysql-community-server

sudo service mysqld start

sudo systemctl stop mysqld

sudo systemctl set-environment MYSQLD_OPTS="--skip-grant-tables"

sudo systemctl start mysqld

UPDATE mysql.user SET authentication_string = PASSWORD('123456') WHERE User = 'root' AND Host = 'localhost';

FLUSH PRIVILEGES;

sudo systemctl stop mysqld

sudo systemctl unset-environment MYSQLD_OPTS

sudo systemctl start mysqld
