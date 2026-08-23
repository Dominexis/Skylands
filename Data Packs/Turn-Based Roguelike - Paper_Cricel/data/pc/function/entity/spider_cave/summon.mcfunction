
summon minecraft:cave_spider ~ ~ ~ {Tags:["pc.summon"]}

data modify storage pc:temp summon set value {id:"spider_cave",team:'enemy',hpmax:30,effects:[{id:"netting"}]}
execute as @e[tag=pc.summon,type=cave_spider,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/summon