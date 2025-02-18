#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www
chmod 775 /var/www
echo "<html><h1>Hola!</h1></html>" > /var/www/html/index.html
chown ec2-user:apache /var/www/html/index.html
