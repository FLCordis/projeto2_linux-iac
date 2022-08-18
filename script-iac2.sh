#!/bin/bash

echo "Atualizando o servidor... (1/3)"

apt-get update
apt-get upgrade -y

echo "Instalanção de Pacotes... (2/3)"
apt-get install apache2 -y
apt-get install unzip

echo "Download e Configuração do Site... (3/3)"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Done!"
