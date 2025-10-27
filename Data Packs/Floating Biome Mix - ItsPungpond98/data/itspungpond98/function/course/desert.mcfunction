#Cactus
execute positioned ~-87 ~65 ~-44 if entity @p[dx=29,dy=10,dz=12,predicate=sl:player] run scoreboard players add #cactus itspungpond98.clock 1
execute if score #cactus itspungpond98.clock matches 40.. run scoreboard players set #cactus itspungpond98.clock 0

execute if score #cactus itspungpond98.clock matches 11 run setblock ~-66 ~67 ~-39 minecraft:cactus
execute if score #cactus itspungpond98.clock matches 16 run setblock ~-66 ~68 ~-39 minecraft:cactus

execute if score #cactus itspungpond98.clock matches 36 run fill ~-66 ~67 ~-39 ~-66 ~68 ~-39 minecraft:air

#Minecart
execute positioned ~-83 ~64 ~-80 if entity @p[dx=37,dy=12,dz=35,predicate=sl:player] run scoreboard players add #minecart itspungpond98.clock 1
execute if score #minecart itspungpond98.clock matches 30.. run scoreboard players set #minecart itspungpond98.clock 0

execute if score #minecart itspungpond98.clock matches 10 run summon minecraft:chest_minecart ~-56 ~69 ~-75 {Motion:[0.0d,0.0d,1.0d],Tags:["itspungpond98.minecart"]}
execute as @e[type=minecraft:chest_minecart,distance=..150,tag=itspungpond98.minecart] at @s as @a[dx=0,dy=1,dz=1,predicate=sl:player] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 80 1 1
execute as @e[type=minecraft:chest_minecart,distance=..150,tag=itspungpond98.minecart] at @s as @a[dx=0,dy=1,dz=1,predicate=sl:player] at @s run particle minecraft:explosion_emitter ~ ~ ~ .2 .2 .2 1 10 force
execute as @e[type=minecraft:chest_minecart,distance=..150,tag=itspungpond98.minecart] at @s as @a[dx=0,dy=1,dz=1,predicate=sl:player] at @s run function sl:api/send_to_checkpoint
execute as @e[type=minecraft:chest_minecart,distance=..150,tag=itspungpond98.minecart] at @s if entity @p[dx=0,dy=0,dz=1,predicate=sl:player] run kill @s

execute positioned ~-56 ~69 ~-63 run kill @e[type=minecraft:chest_minecart,distance=..1.5,tag=itspungpond98.minecart]