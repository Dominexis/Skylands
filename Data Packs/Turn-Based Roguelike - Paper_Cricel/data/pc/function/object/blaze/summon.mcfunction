
# effect
summon minecraft:blaze ~ ~ ~ {Tags:["pc.summon","pc.object.mob"]}

# Attribute
data modify storage pc:temp summon set value {id:"blaze",hp:1000,hpmax:1000}
execute as @n[type=minecraft:blaze,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon] at @s run function pc:sys/object/summon/use