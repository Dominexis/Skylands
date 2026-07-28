
scoreboard players add @s pc.duration 1

execute facing entity @e[tag=pc.entity.bat_rusty.debuff1.pos2,type=marker,limit=1] feet run function entity:bat_rusty/debuff1/fx/2

tp @s ^ ^ ^0.75
execute as @e[tag=pc.entity.bat_rusty.debuff1.pos2,type=marker,limit=1] at @s run tp @s ^ ^ ^0.75
execute as @e[tag=pc.entity.bat_rusty.debuff1.pos3,type=marker,limit=1] at @s run tp @s ^ ^ ^0.75
execute as @e[tag=pc.entity.bat_rusty.debuff1.pos4,type=marker,limit=1] at @s run tp @s ^ ^ ^0.75

execute if score @s pc.duration matches 20.. run function entity:bat_rusty/debuff1/fx/clear