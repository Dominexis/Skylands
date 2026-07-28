
summon minecraft:zombified_piglin ~ ~ ~ {Tags:["pc.summon",pc.entity.piglin_zombie],equipment:{mainhand:{id:"minecraft:golden_sword",count:1}}}

data modify storage pc:temp summon set value {id:"piglin_zombie",team:"enemy",hpmax:18,effects:[{id:"piglin_ts",value:1},{id:"minion"}]}
execute as @e[tag=pc.summon,type=zombified_piglin,limit=1] at @s run function sys:entity/summon