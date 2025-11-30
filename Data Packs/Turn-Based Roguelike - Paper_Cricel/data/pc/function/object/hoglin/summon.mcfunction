
# effect
summon minecraft:hoglin ~ ~ ~ {Tags:["pc.summon","pc.object.mob"],IsImmuneToZombification:1b}

# Attribute
data modify storage pc:temp summon set value {id:"hoglin",hp:1000,hpmax:1000}
execute as @n[type=minecraft:hoglin,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon] at @s run function pc:sys/object/summon/use