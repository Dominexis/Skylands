
scoreboard players add @s pc.duration 1

tp @s ^ ^ ^1
execute if function pc:sys/entity/hitbox/ally positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.intent.now,dx=2,dy=200,dz=2,type=minecraft:marker,limit=1] at @s run function pc:entity/bat/attack1/3

execute if score @s pc.duration matches 30.. run return run function pc:entity/bat/attack1/fx/clear
execute if score @s pc.duration matches 4.. unless function pc:sys/entity/hitbox/intent run return run function pc:entity/bat/attack1/fx/clear

# fx
particle minecraft:sweep_attack ~ ~ ~ 1 1 1 0 3 force
playsound minecraft:entity.ender_dragon.flap master @a ~ ~1024 ~ 0 1 0.1