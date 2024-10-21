#!/bin/bash
# Instalar Apache Web Server y PHP 
yum install -y httpd mysql php 
# Descargar web de ejemplo
wget https://aws-tc-largeobjects.s3.us-west-2.amazonaws.com/CUR-TF-100-ACCLFO-2-102668/2-lab2-vpc/s3/lab-app.zip 
unzip lab-app.zip -d /var/www/html/ 
# Levantar servidor web
chkconfig httpd on 
service httpd start
