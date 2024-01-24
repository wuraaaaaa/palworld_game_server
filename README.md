# palword_game_server
palword game server - Docker

## first use
Create ```game``` sub-directories on your server directory

init server
```./server.sh start```

(option) change setting  Settings must be made when the server is shut down.
```./server.sh stop```
modify setting: ```vi /game/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini```

start server
```./server.sh start```



## backup
```
/game/backups/*.tar.gz
```

## config
```
/game/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini
```