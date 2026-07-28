
summon minecraft:zombie ~ ~ ~ {Tags:["pc.summon"],equipment:{mainhand:{id:"minecraft:wooden_sword",count:1},head:{id:"minecraft:leather_helmet",count:1}}}

data modify storage pc:temp summon set value {id:"zombie",team:'enemy',hpmax:20}
execute as @e[tag=pc.summon,type=minecraft:zombie,limit=1] at @s run function sys:entity/summon