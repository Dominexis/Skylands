
execute as @e[tag=pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/utils/passive/use {passive:"on_hit"}
function pc:sys/utils/passive/use {passive:"on_hurt"}

execute if score #damage pc.main matches 1.. run function pc:sys/utils/passive/use {passive:"lose_hp"}
execute unless score #damage pc.main matches 0.. run scoreboard players set #damage pc.main 0
scoreboard players operation @s pc.hp -= #damage pc.main

function pc:sys/utils/passive/use {passive:"after_hurt"}
execute as @e[tag=pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/utils/passive/use {passive:"after_hit"}
execute unless score @s pc.hp matches 1.. run function pc:sys/utils/passive/use {passive:"on_death"}