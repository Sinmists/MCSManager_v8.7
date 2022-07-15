#!/bin/bash

node_install_path="/opt/node-v12.16.1-linux-x64/"

echo "Start to install MCSManager..."
echo ""
mkdir -p ${node_install_path}
cd ${node_install_path} || return
sleep 3

# node
echo "Download node from https://npm.taobao.org/mirrors/node/v12.16.1/node-v12.16.1-linux-x64.tar.gz"
wget https://npm.taobao.org/mirrors/node/v12.16.1/node-v12.16.1-linux-x64.tar.gz

# Unpack
echo "Unpacking..."
echo "> tar -zxf node-v12.16.1-linux-x64.tar.gz"
tar -zxf node-v12.16.1-linux-x64.tar.gz
rm -rf node-v12.16.1-linux-x64.tar.gz
echo "complete."

sleep 1

echo "Linking..."
echo "> ln -s ${node_install_path}/node-v12.16.1-linux-x64/bin/node /usr/bin/node"
echo "> ln -s ${node_install_path}/node-v12.16.1-linux-x64/bin/node /usr/bin/node"
rm -rf /usr/bin/node /usr/bin/npm
ln -s ${node_install_path}/node-v12.16.1-linux-x64/bin/node /usr/bin/node
ln -s ${node_install_path}/node-v12.16.1-linux-x64/bin/npm /usr/bin/npm
echo "complete."

sleep 1

echo "--------------- Node Version ---------------"
node_version=$(node -v)
npm_version=$(npm -v)
echo " node: ${node_version}"
echo " npm: ${npm_version}"
echo "--------------- Node Version ---------------"

sleep 3
cd ..

echo "Installing git..."
yum install -y git
apt install -y git
pacman -Syu --noconfirm git
echo "complete."

echo "Download MCSManager..."
# Use Gitee
git clone https://gitee.com/kc_jiang/MCSManager_v8.7.git
cd MCSManager_v8.7 || return
echo "complete."

sleep 3

echo "Start to install dependent libraries..."
npm install --registry=https://registry.npm.taobao.org --no-optional

echo "--------------- Complete ---------------"
echo " Successfully installed!!!"
echo " Directory: /opt/MCSManager/"
echo "--------------- Complete ---------------"

sleep 2

echo "Joining system service..."
echo "Create file: /usr/lib/systemd/system/mcsm.service"

rm -rf /lib/systemd/system/mcsm.service

# register service
echo "[Unit]
Description=MCSManager

[Service]
ExecStart=/usr/bin/node /opt/MCSManager/app.js
Restart=always
Environment=PATH=/usr/bin:/usr/local/bin:/usr/local/node/bin
Environment=NODE_ENV=production
WorkingDirectory=/opt/MCSManager/

[Install]
WantedBy=multi-user.target " >>/lib/systemd/system/mcsm.service

echo "complete."

echo "
--------------- Quickstart ---------------
 Start： systemctl start mcsm
 Stop:	 systemctl stop mcsm
 Status: systemctl status mcsm
--------------- Quickstart ---------------
"
