
# return inventory
execute as @p[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/player/data/load
execute as @p[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s if score $game.combat.start pc.main matches 1 run function pc:sys/item/return/inventory
execute as @p[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/player/data/save

# effect
tag @s add pc.lobby.character.chose
scoreboard players reset $game.start pc.main

function pc:sys/lobby/start/use {map:minecraft}