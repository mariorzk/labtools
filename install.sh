#!/bin/bash#!/bin/bash

zenity --info --width=250 --height=110 --text "<b><span color=\'green\'>CENTRAL DE PROGRAMAS</span></b> 
A lista de programas será carregada em breve, porém antes de prosseguir, realize login como <b>administrador do sistema</b>"

pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY bash -c '

apt remove --purge samba-common-bin -y
echo "------------------------------------------ ATUALIZANDO OS PACOTES"
apt update
dpkg --configure -a
# ------------------------------------------
echo "------------------------------------------ Instalando Virtuall Box"

virtualbox -y && wget https://download.virtualbox.org/virtualbox/6.1.38/Oracle_VM_VirtualBox_Extension_Pack-6.1.38.vbox-extpack && sudo VBoxManage extpack install --replace  Oracle_VM_VirtualBox_Extension_Pack-6.1.38.vbox-extpack -y

echo "------------------------------------------ Atualizando os navegadores Chrome e Firefox"
apt install google-chrome-stable -y firefox firefox-locale-pt

echo "> ------------------------------------------ INSTALANDO VISUAL STUDIO CODE -------------------------------------------"
echo "> ------------------------------------------   Instalando as dependências   -----------------------------------------"
sudo apt install software-properties-common apt-transport-https wget -y
echo "> ------------------------ Adicionando chaves de verificação da integridade dos pacotes ------------------------------"
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
apt update
echo "> --------------------------------------- Adionando repositório ------------------------------------------------------"
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt update
sudo apt install code -y

echo "> ------------------------------------------ INSTALANDO PIP DO PYTHON ------------------------------------------"
apt update
apt install python3 -y pip -y

echo "------------------------------------------ ATUALIZANDO OS PACOTES"
apt update

echo "> ------------------------------------------ INSTALANDO E CONFIGURANDO O EPOPTES ------------------------------------------ "
#apt install epoptes -y
#nano /etc/default/epoptes-client
#epoptes-client -c

#echo "------------------------------------------ CRIANDO UM USUÁRIO ADMINISTRADOR PARA O SISTEMA"
#sudo adduser administrador

echo "------------------------------------------ MODIFICANDO CONFIGURAÇÕES DE ENERGIA"
'

#xfce4-power-manager-settings
#xfce4-screensaver-preferences
#users-admin
