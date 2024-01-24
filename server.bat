@echo off  
set "command=%1"  
set "docker_compose_command=docker-compose -p palword-server"  
  
if "%command%"=="start" (  
    %docker_compose_command% up -d  
) else if "%command%"=="stop" (  
    %docker_compose_command% down --remove-orphans  
) else if "%command%"=="restart" (  
    %docker_compose_command% down --remove-orphans && %docker_compose_command% up -d  
) else (  
    echo unknow: %command%  
    exit /b 1  
)