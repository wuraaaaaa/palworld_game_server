# palworld_game_server
palword game server - Docker

## First Use 首次使用

### 1、Prepare 准备


```
# 拉取代码
git clone https://github.com/wuraaaaaa/palworld_game_server.git


# 进入项目文件夹，创建game目录，并修改权限
cd palworld_game_server

mkdir game

chmod 777 game
```

### 2、Init Server 初始化服务器
输入
```./server.sh start```

### 3、(option) Change setting  [Settings must be made when the server is shut down.]
**可选 修改配置文件 [修改配置文件必须要先停止服务器否则修改内容会被覆盖]**

停止服务器

```./server.sh stop```

modify setting 修改配置: ```vi /game/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini```

### 4、start server 启动服务器
```./server.sh start```



## backup 备份文件夹目录
```
/game/backups/*.tar.gz
```

## config 配置文件目录
```
/game/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini
```

## user rcon 使用rcon监控&管理服务器

启动服务器前，在docker-compose.yaml中修改rcon的entrypoint中的ip为服务器的hostip

服务启动后 使用命令 ./admin.sh Info 查看服务信息
支持命令使用./admin.sh /help查看

before start server,entry you host ip in docker-compose.yaml:rcon:entrypoint
use command example ./admin.sh Info   (show the server info)

## 推荐服务器
[【腾讯云】轻量新用户上云福利，2核2G4M 低至 65元/年 ， 超大容量云硬盘 0.5折起！ ](https://curl.qcloud.com/Kf680Hzd)
