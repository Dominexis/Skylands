# Reset spectate trigger
execute if score @s spectate matches 1.. run tellraw @s {"text":"You are now spectating","color":"gold"}
scoreboard players set @s spectate 0

# Send player to spectator
function sl:player/spectate