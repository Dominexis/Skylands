
summon minecraft:slime ~ ~ ~ {Tags:["pc.summon"],attributes:[{id:'scale',base:1.5}]}

data modify storage pc:temp summon set value {id:"slime",team:'enemy',hpmax:24}
execute as @e[tag=pc.summon,type=slime,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/summon