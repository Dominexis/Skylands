# Send player to lobby if they are a spectator
scoreboard players set @s[team=sl.spectator] checkpoint 0
execute if entity @s[team=sl.spectator] run return run trigger lobby

# Reset checkpoint trigger
execute if score @s checkpoint matches 1.. run tellraw @s {text:"You have been sent to the previous checkpoint",color:"gold",type:"text"}
scoreboard players set @s checkpoint 0

# Send player to checkpoint
function sl:player/checkpoint