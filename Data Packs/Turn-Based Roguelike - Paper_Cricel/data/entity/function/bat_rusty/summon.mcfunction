
summon minecraft:bat ~ ~1 ~ {Tags:["pc.summon","pc.entity.bat_rusty"],attributes:[{id:"minecraft:scale",base:1.25}]}

data modify storage pc:temp summon set value {id:"bat_rusty",team:"enemy",hpmax:36,effects:[{id:"vampire",value:2}]}
execute as @e[tag=pc.summon,type=bat,limit=1] at @s run function sys:entity/summon