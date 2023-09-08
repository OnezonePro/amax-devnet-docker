
# 下载 amnod:0.5.2 镜像
docker pull armoniax/amnod:0.5.2

# 运行节点
docker run -itd -p 22:22 -v ~/contracts:/root/contracts --workdir=/root/contracts --name=amax-devnet armoniax/amnod:0.5.2

# 查看镜像列表
docker ps

# 进入镜像
docker exec -it amax-devnet /bin/bash

# 查看Python版本
python3 --version
# Python 3.6.9

# https://cloud.tencent.com/developer/article/1626765
# 升级到 Python 3.8
apt install software-properties-common
add-apt-repository ppa:deadsnakes/ppa
apt install python3.8

# 查看amnod版本
amnod --version
# v0.5.2

# 更新软件源
apt update

# 升级软件包
apt upgrade

# 安装pip3
apt install python3-pip

# 安装cmake
apt install wget cmake

# 下载 amax.cdt.zip
wget https://github.com/OnezonePro/amax-devnet-docker/raw/main/amax.cdt.zip

# 解压到 /usr/local
mv ~/amax.cdt.zip /usr/local
unzip amax.cdt.zip

# 查看amax-cpp版本
amax-cpp --version
# amax-cpp version 1.7.6

# 发布镜像到hub.docker
# docker commit --message "amax-devnet v1.1.0" 镜像id hub500/amaxdevnet:1.1.0
# docker commit --message "amax-devnet v1.1.0" 7d6c7eccb508 hub500/amaxdevnet:1.1.0

# 运行amax开发环境
# docker run -itd -p 22:22 --workdir=/root/contracts --name=amax-devnet1 hub500/amaxdevnet:1.1.0
