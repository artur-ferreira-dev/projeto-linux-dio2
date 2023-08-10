#!/bin/bash
if [ "$(id -u)" != "0" ]; then
echo
echo "Voce deve executar este script como root! "
fi

echo "Instalando apache..."
apt update
apt install apache2 -y

echo "Instalando unzip..."
apt install unzip -y

echo "Baixando e configurando os arquivos do site"
wget -c https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/apache.zip
rm -rf /var/www/html/*
unzip /tmp/apache.zip 
cp -R /tmp/linux-site-dio-main /var/www/html/
echo "Configurações realizadas"




