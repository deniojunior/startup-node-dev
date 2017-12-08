#!/usr/bin/env bash

#GET ROOT UP IN HERE
sudo -s

#UPDATE THE SYSTEM
#sudo yum update

#SET TIMEZONE FOR AMERICA/BRAZIL/SÃO PAULO
echo "[Bootstrap] Set Timezone to America/Sao_Paulo"
timedatectl set-timezone America/Sao_Paulo

#INSTALL GIT
echo "[Bootstrap] Installing Git"
#yum -y install git

#INSTALL VIM
echo "[Bootstrap] Installing Vim"
yum -y install vim-X11 vim-common vim-enhanced vim-minimal

#INSTALL LAST VERSION OF NODEJS 9 AND NPM
echo "[Bootstrap] Installing NodeJS 9 and NPM"
yum install -y gcc-c++ make
curl -sL https://rpm.nodesource.com/setup_9.x | sudo -E bash -
yum -y install nodejs

#INSTALL NGINX
echo "[Bootstrap] Installing NGINX"
dnf install -y autossh nginx

#INSTALL PROJECT DEPENDENCIES
echo "[Bootstrap] Installing NPM depencencies"
cd /vagrant
npm install

# CONFIG PM2 - MODULE TO KEEP APP ALIVE AND MONITOR
#echo "[Bootstrap] Installing PM2 - Module to keep app alive and monitor"
#pm2 startup systemd
#sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u vagrant --hp /home/vagrant

#EXIT ROOT
exit