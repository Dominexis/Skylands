
summon minecraft:slime ~ ~ ~ {Tags:["pc.summon"],attributes:[{id:'scale',base:1.5}]}

data modify storage pc:temp summon set value {id:"slime",team:'enemy',hpmax:24}
execute as @e[tag=pc.summon,type=slime,limit=1] at @s run function sys:entity/summon