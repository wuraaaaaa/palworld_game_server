#!/bin/bash  
  
command="$1"  
rcon_command="docker-compose run --rm rcon"  
  
if [ "$command" == "/help" ]; then  
    echo "example ./admin.sh Info   (show the server info)"
    echo "-------------- support command --------------"
    echo "Shutdown {Seconds} {MessageText}	--The server is shut down after the number of Seconds Will be notified of your MessageText.|| 服务器将在秒数之后关闭，您的消息文本将被通知。"
    echo "DoExit	--Force stop the server.|| 强制停止服务器。"
    echo "Broadcast {MessageText}	--Send message to all player in the server. || 向服务器中的所有玩家发送消息。"
    echo "KickPlayer {SteamID}	--Kick player from the server. || 将玩家从服务器中踢出。"
    echo "BanPlayer {SteamID}	--BAN player from the server. || 将玩家从服务器中封禁。"
    echo "TeleportToPlayer {SteamID}	--Teleport to current location of target player. || 传送到目标玩家的当前位置。"
    echo "TeleportToMe {SteamID}	--Target player teleport to your current location || 目标玩家传送至您的当前位置。"
    echo "ShowPlayers	--Show information on all connected players. || 显示所有已连接的玩家信息。"
    echo "Info	--Show server information. || 显示服务器信息。"
    echo "Save	--Save the world data. || 保存世界数据。"
    exit 1  
else  
    $rcon_command $command  
fi