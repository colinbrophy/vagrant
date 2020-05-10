#!/usr/bin/env bash

setenforce 0
yum install -y httpd

rmdir /var/www/html
ln -sf /vagrant /var/www/html
cd /var/www/html
#chown apache.apache index.html

systemctl enable --now httpd

