#!/bin/bash  

command="$1"  
  

docker_compose_command="docker-compose -p palword-server"  
  
  
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