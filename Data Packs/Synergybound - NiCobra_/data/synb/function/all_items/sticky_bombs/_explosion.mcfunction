scoreboard players reset @s synb.Item.sticky_bombs.delay
particle minecraft:explosion ~ ~1 ~ 0.2 0.2 0.2 0.1 2
playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 0.7 2
execute as @e[type=!minecraft:player,tag=synb.type.enemy,distance=..3.5] at @s run function synb:itemengine/player/damage_enemy_magic {dmg:3}