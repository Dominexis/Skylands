
summon minecraft:bat ~ ~1 ~ {Tags:["pc.summon","pc.entity.bat_rusty"],attributes:[{id:"minecraft:scale",base:1.25}]}

data modify storage pc:temp summon set value {id:"bat_rusty",team:"enemy",hpmax:36,effects:[{id:"vampire",value:2}]}
execute as @e[tag=pc.summon,type=bat,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/summon