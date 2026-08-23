
summon minecraft:spider ~ ~ ~ {Tags:["pc.summon"]}

data modify storage pc:temp summon set value {id:"spider",team:'enemy',hpmax:36,effects:[{id:"netting"}]}
execute as @e[tag=pc.summon,type=spider,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/summon