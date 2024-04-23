#!/bin/bash
apt update&&apt upgrade

apt install wget unzip -y
apt install nginx mariadb-server -y
apt install php php-fpm php-mysql php-xml php-mbstring php-intl php-curl php-apcu php-gd php-fpm -y
apt install apache2-utils imagemagick