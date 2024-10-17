#!/bin/bash
# Instalar Apache Web Server y PHP 
yum install -y httpd mysql php 
# Descargar web de ejemplo
wget http://my-url/lab-app.zip 
unzip lab-app.zip -d /var/www/html/ 
# Levantar servidor web
chkconfig httpd on 
service httpd start
