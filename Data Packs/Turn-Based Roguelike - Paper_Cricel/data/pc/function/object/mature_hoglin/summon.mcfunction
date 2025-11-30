
# effect
summon minecraft:hoglin ~ ~ ~ {Tags:["pc.summon","pc.object.mob"],IsImmuneToZombification:1b,attributes:[{id:"minecraft:scale",base:1.2}]}

# Attribute
data modify storage pc:temp summon set value {id:"mature_hoglin",hp:1400,hpmax:1400}
execute as @n[type=minecraft:hoglin,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon] at @s run function pc:sys/object/summon/use