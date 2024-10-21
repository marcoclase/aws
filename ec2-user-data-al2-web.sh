#!/bin/bash
# Instalar Apache Web Server y PHP 
yum install -y httpd mysql php 
# Descargar web de ejemplo
wget https://github.com/marcoclase/aws/blob/main/ejemplo-web-tienda.zip
unzip ejemplo-web-tienda.zip -d /var/www/html/ 
# Levantar servidor web
systemctl enable httpd
systemctl start httpd
