
summon minecraft:cave_spider ~ ~ ~ {Tags:["pc.summon"]}

data modify storage pc:temp summon set value {id:"spider_cave",team:'enemy',hpmax:30,effects:[{id:"netting"}]}
execute as @e[tag=pc.summon,type=cave_spider,limit=1] at @s run function sys:entity/summon