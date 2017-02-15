#!/bin/bash

sudo yum install httpd -y
sudo service httpd start

sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --reload
