#!/bin/bash  

command="$1"  
  

docker_compose_command="docker-compose -p palword-server"  

function backupSetting() {
    if [  -f ./game/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini ]; then
        echo "backup setting.ini"
        if [ ! -d ./backup ]; then
            mkdir -d backup
        fi
        \cp ./game/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini ./backup/PalWorldSettings.ini
    fi
        
}
  
case $command in
    start)  
        $docker_compose_command up -d  
        ;;  
    stop)  
        $docker_compose_command down --remove-orphans  
        ;;  
    restart)  
        $docker_compose_command down --remove-orphans && $docker_compose_command up -d  
        ;;  
    *)  
        echo "unknow: $command"  
        exit 1  
        ;;  
esac