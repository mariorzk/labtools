#!/bin/bash#!/bin/bash

zenity --info --width=250 --height=110 --text "<b><span color=\'green\'>CENTRAL DE PROGRAMAS</span></b> 
A lista de programas será carregada em breve, porém antes de prosseguir, realize login como <b>administrador do sistema</b>"

pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY bash -c '

apt remove --purge samba-common-bin -y
echo "------------------------------------------ ATUALIZANDO OS PACOTES ------------------------------------------ "
apt update
dpkg --configure -a

echo "------------------------------------------ Instalando Virtuall Box------------------------------------------ "

#virtualbox -y && wget https://download.virtualbox.org/virtualbox/6.1.38/Oracle_VM_VirtualBox_Extension_Pack-6.1.38.vbox-extpack && sudo VBoxManage extpack install --replace  Oracle_VM_VirtualBox_Extension_Pack-6.1.38.vbox-extpack -y

echo "------------------------------------------ Atualizando os navegadores Chrome e Firefox"
apt install google-chrome-stable -y firefox firefox-locale-pt

echo "> ------------------------------------------ INSTALANDO VISUAL STUDIO CODE -------------------------------------------"

echo "> ------------------------------------------   Instalando as dependências   -----------------------------------------"
#sudo apt install software-properties-common apt-transport-https wget -y

echo "> ------------------------ Adicionando chaves de verificação da integridade dos pacotes ------------------------------"
#wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
#apt update
github/mariorzk
echo "> --------------------------------------- Adionando repositório ------------------------------------------------------"
#sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
#apt update
#sudo apt install code -y/home/aluno/

echo "> ------------------------------------------ INSTALANDO PIP DO PYTHON ------------------------------------------"
#apt update
apt install python3 -y pip -y

echo "------------------------------------------ ATUALIZANDO OS PACOTES ------------------------------------------ "
#apt update

echo "> ------------------------------------------ INSTALANDO E CONFIGURANDO O EPOPTES ------------------------------------------ "
#apt install epoptes-client -y
#nano /etc/default/epoptes-client
#epoptes-client -c

echo "> ------------------------------------------ REMOVENDO O WINE DO SISTEMA ------------------------------------------ "
#apt remove --purge wine

#echo "------------------------------------------ CRIANDO UM USUÁRIO ADMINISTRADOR PARA O SISTEMA ------------------------------------------ "
#sudo adduser administrador

echo "------------------------------------------ MODIFICANDO CONFIGURAÇÕES DE ENERGIA ------------------------------------------ "


echo "------------------------------------------ INSTALANDO ARDUINO ------------------------------------------ "
wget https://downloads.arduino.cc/arduino-1.8.16-linux64.tar.xz -O arduino-version.tar.xz
tar xf arduino-version.tar.xz
cd arduino-1.8.16
./install.sh
cd.. 
rm arduino-1.8.16
rm arduino-version.tar.xz


sudo add-apt-repository ppa:damien-moore/codeblocks-stable
sudo apt-get update
sudo apt-get install codeblocks -y
codeblocks

rm /home/aluno/labtools

'

#xfce4-power-manager-settings
#xfce4-screensaver-preferences
#users-admin
