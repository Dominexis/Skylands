
# effect
damage @s[type=!minecraft:armor_stand,type=!minecraft:end_crystal] 0.000000000000000000000000000001 minecraft:out_of_world
execute if entity @s[type=minecraft:enderman] run tp @s ~ ~ ~ ~ ~

function pc:sys/object/passive/use {type:"on_hurt"}
execute if score #damage pc.main matches 1.. run function pc:sys/object/passive/use {type:"lose_hp"}

scoreboard players operation @s pc.hp -= #damage pc.main
execute if entity @s[type=!minecraft:player,predicate=pc:object/ally_player] run function pc:sys/player/stat/dmg/taken
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.atker,limit=1,predicate=pc:object/ally_player] run function pc:sys/player/stat/dmg/dealt
execute if score @s pc.hp matches ..0 run scoreboard players set @s pc.hp 0

# fx
execute if score #damage pc.main matches 1.. run particle minecraft:damage_indicator ^ ^ ^ 0 0 0 0.5 5 force
execute if score #damage pc.main matches 100.. run particle minecraft:damage_indicator ^ ^ ^ 0 0 0 0.5 5 force
execute if score #damage pc.main matches 200.. run particle minecraft:damage_indicator ^ ^ ^ 0 0 0 0.5 5 force