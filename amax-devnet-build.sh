
# 下载 amnod:1.0.3 镜像
docker pull armoniax/amnod:1.0.3

# 运行节点
docker run -itd -p 22:22 -v ~/contracts:/root/contracts --workdir=/root/contracts --name=amax-devnet armoniax/amnod:1.0.3

# 查看镜像列表
docker ps

# 进入镜像
docker exec -it amax-devnet /bin/bash

# 查看Python版本
python3 --version
# Python 3.6.9

# https://cloud.tencent.com/developer/article/1626765
# 升级到 Python 3.8
apt install -y software-properties-common
add-apt-repository universe

# 更新软件源
apt update
# 升级软件包
apt upgrade

# 安装python3
apt install -y python3.8 python3.8-dev

# 安装pip3
apt install -y python3-pip

# 安装cmake
apt install -y wget cmake unzip zip

# 配置默认为 python3.8
cd /usr/bin
rm python3
ln -s ./python3.8 ./python3
python3 --version
# Python 3.8.0

# 查看amnod版本
amnod --version
# v1.0.3

# 下载 amax.cdt.zip
cd ~
wget https://github.com/OnezonePro/amax-devnet-docker/raw/main/amax.cdt.zip

# 解压到 /usr/local
mv ~/amax.cdt.zip /usr/local
cd /usr/local
unzip amax.cdt.zip

# 查看amax-cpp版本
amax-cpp --version
# amax-cpp version 1.7.6

# vscode最新版本要求glibc2.28以上
# https://blog.csdn.net/weixin_42466834/article/details/135958841

# 添加源
vi /etc/apt/sources.list
deb http://security.debian.org/debian-security buster/updates main

# 安装libc6
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 112695A0E562B32A 54404762BBB6E853
apt-get update
apt list --upgradable
apt install libc6 libc6-dev

# 安装amaxfactory
cd /opt/amax
wget https://github.com/OnezonePro/amax-devnet-docker/blob/main/amaxfactory.zip
unzip amaxfactory.zip

# 修改 amaxfactory/config/config.ini 文件
[config]
FACTORY_DIR = /opt/amax/amaxfactory
WALLET_DIR = /root/amax-wallet
AMAX_DIR = /usr/opt/amax/1.0.3
CONTRACT_WORKSPACE = /root/contracts

# 安装amaxfactory
bash install.sh
# 最后设置合约目录为 /root/contracts


# 发布镜像到hub.docker
# docker commit --message "amax-devnet v1.5.0" 镜像id hub500/amaxdevnet:1.5.0
# docker commit --message "amax-devnet v1.5.0" 7d6c7eccb508 hub500/amaxdevnet:1.5.0

# 运行amax开发环境
# docker run -itd -p 22:22 --workdir=/root/contracts --name=amax-devnet1 hub500/amaxdevnet:1.5.0

# amaxfactory 配置
# [config]
# FACTORY_DIR = /opt/amax/amaxfactory
# WALLET_DIR = /root/amax-wallet
# AMAX_DIR = /usr/opt/amax/1.0.3
# CONTRACT_WORKSPACE = /root/contracts
