#!/bin/bash

echo "Atualizando o servidor"
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install apache2 -y
sudo apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação"
cd /tmp
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/