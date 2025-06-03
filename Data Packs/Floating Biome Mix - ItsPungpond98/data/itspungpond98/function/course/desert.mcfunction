#Cactus
execute positioned ~-87 ~65 ~-44 if entity @p[dx=29,dy=10,dz=12,predicate=sl:player] run scoreboard players add #cactus itspungpond98.clock 1
execute if score #cactus itspungpond98.clock matches 40.. run scoreboard players set #cactus itspungpond98.clock 0

execute if score #cactus itspungpond98.clock matches 11 run setblock ~-66 ~67 ~-39 cactus
execute if score #cactus itspungpond98.clock matches 16 run setblock ~-66 ~68 ~-39 cactus

execute if score #cactus itspungpond98.clock matches 36 run fill ~-66 ~67 ~-39 ~-66 ~68 ~-39 air

#Minecart
execute positioned ~-83 ~64 ~-80 if entity @p[dx=37,dy=12,dz=35,predicate=sl:player] run scoreboard players add #minecart itspungpond98.clock 1
execute if score #minecart itspungpond98.clock matches 30.. run scoreboard players set #minecart itspungpond98.clock 0

execute if score #minecart itspungpond98.clock matches 10 run summon chest_minecart ~-56 ~69 ~-75 {Motion:[0d,0d,1d],Tags:["itspungpond98.minecart"]}
execute as @e[tag=itspungpond98.minecart,type=chest_minecart,distance=..150] at @s run execute as @a[predicate=sl:player,dz=1,dy=1,dx=0] at @s run playsound entity.generic.explode master @s ~ ~ ~ 80 1 1
execute as @e[tag=itspungpond98.minecart,type=chest_minecart,distance=..150] at @s run execute as @a[predicate=sl:player,dz=1,dy=1,dx=0] at @s run particle explosion_emitter ~ ~ ~ .2 .2 .2 1 10 force
execute as @e[tag=itspungpond98.minecart,type=chest_minecart,distance=..150] at @s run execute as @a[predicate=sl:player,dz=1,dy=1,dx=0] at @s run function sl:api/send_to_checkpoint
execute as @e[tag=itspungpond98.minecart,type=chest_minecart,distance=..150] at @s if entity @p[predicate=sl:player,dz=1,dx=0,dy=0] run kill @s

execute positioned ~-56 ~69 ~-63 run kill @e[type=chest_minecart,distance=..1.5,tag=itspungpond98.minecart]