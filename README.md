# amax-devnet-docker
amax devnet docker

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

