# Reset lobby trigger
execute if score @s lobby matches 1.. run tellraw @s {"text":"You are being sent to the lobby","color":"gold"}
scoreboard players set @s lobby 0

# Queue to join the lobby
function sl:player/queue_lobby