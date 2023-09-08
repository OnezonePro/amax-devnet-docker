# amax-devnet-docker

### 本地安装 amax-devnet开发环境

* 运行开发环境
  
> docker run -itd -p 22:22 --workdir=/root/contracts --name=amax-devnet1 hub500/amaxdevnet:1.1.0

WARNING: The requested image's platform (linux/amd64) does not match the detected host platform (linux/arm64/v8) and no specific platform was requested
8dffcf5633574b656dd5de06125ab014c90902ba811a4d9f5d07c6a76241c1a2

* 查看容器列表
  
> docker ps

```
CONTAINER ID   IMAGE                     COMMAND           CREATED         STATUS         PORTS                NAMES
8dffcf563357   hub500/amaxdevnet:1.1.0   "/sbin/my_init"   6 seconds ago   Up 5 seconds   0.0.0.0:22->22/tcp   amax-devnet1
```

* 进入容器
  
> docker exec -it amax-devnet1 /bin/bash

root@8dffcf563357:~/contracts#

* 查看 amax-cpp和amnod版本
  
> amax-cpp --version

amax-cpp version 1.7.6


> amnod --version

v0.5.2

* 操作结果如下图

<img width="1093" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/9a8eb5f3-438e-4c1d-a951-34cb52718426">

### 安装配置vscode开发环境

* 安装 docker 插件

<img width="329" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/819cd764-facb-4180-a0b1-029bb5d4d5d3">

* 安装 remote 远程桌面

<img width="325" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/cb754397-992d-4edc-9ea2-23c0fd326923">

* 打开并进入 amax devnet 容程开发合约
 
<img width="634" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/0a87cade-dc99-4acb-8f4c-d384dbe92b8c">

<img width="1077" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/2f326162-3c0e-4190-8e26-e543c2ed7e62">

<img width="1002" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/63fb1127-b933-4e1f-9acd-3313dcfb9da0">

* 下载测试合约源码压缩包

<img width="620" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/e24a92aa-f3db-4edc-8486-9fb158f31dbd">

* 本地解压后 复制上传到窗器中

<img width="558" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/2d39fb82-f580-4267-8305-03702ea1e51c">

### 编译测试示例合约

> chmod +x ./build.sh

<img width="947" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/f981c024-130f-4682-bd8a-0219648961c8">

> bash ./build.sh

<img width="733" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/04944ae3-9bd7-4739-b360-b06f6f7b2305">

* 【可选】安装Python 测试插件
  
<img width="1223" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/6a1cf5ef-e470-447b-abb3-054f588df9cf">

<img width="708" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/7bebea92-38df-4941-89a6-293c3e414ebf">

<img width="878" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/210013bd-3555-433d-bef9-4cecee5b9c57">

<img width="719" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/449754af-d8b5-453c-bf39-79003e90bdef">

### 运行测试用例

> python3 test_nftone_xdao.py
 
<img width="1440" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/f05e192c-5565-45a1-b6f6-7364201743a7">

最终运行结果如下

<img width="1440" alt="image" src="https://github.com/OnezonePro/amax-devnet-docker/assets/80018598/33d9e0d0-ee30-4592-97ee-7b21cfcda4da">

完成本地开发环境及全流程的测试
