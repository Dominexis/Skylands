
summon minecraft:spider ~ ~ ~ {Tags:["pc.summon"]}

data modify storage pc:temp summon set value {id:"spider",team:'enemy',hpmax:36,effects:[{id:"netting"}]}
execute as @e[tag=pc.summon,type=spider,limit=1] at @s run function sys:entity/summon