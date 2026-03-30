
# effect
scoreboard players operation #this sl.id = @s sl.id
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/ally_player] if score @s sl.id = #this sl.id run tag @s add pc.player.now

# Select
function pc:sys/player/rc/main
function pc:sys/player/select/player/main
function pc:sys/player/turn/title/main

# Object Player
tag @n[type=!minecraft:player,distance=..100,tag=pc.player.now,predicate=pc:object/ally_player] remove pc.player.now