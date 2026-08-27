
summon minecraft:zombie ~ ~ ~ {Tags:["pc.summon"],equipment:{mainhand:{id:"minecraft:wooden_sword",count:1},head:{id:"minecraft:leather_helmet",count:1}}}

data modify storage pc:temp summon set value {id:"zombie",team:'enemy',hpmax:20}
execute as @e[tag=pc.summon,type=minecraft:zombie,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/summon