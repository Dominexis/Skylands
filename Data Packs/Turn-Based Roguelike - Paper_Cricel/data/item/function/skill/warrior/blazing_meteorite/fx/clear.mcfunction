
execute as @e[tag=pc.grid.atker,type=minecraft:marker,limit=1] at @s run function item:skill/warrior/blazing_meteorite/2
function sys:combat/turn/end_act

# fx
execute at @s positioned ~ ~0.1 ~ run function item:skill/warrior/blazing_meteorite/fx/burst_fx

kill @s