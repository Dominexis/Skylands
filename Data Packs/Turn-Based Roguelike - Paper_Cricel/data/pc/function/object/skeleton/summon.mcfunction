
# effect
summon minecraft:skeleton ~ ~ ~ {Tags:["pc.summon","pc.object.mob"],equipment:{mainhand:{id:"minecraft:bow"}}}

# Attribute
data modify storage pc:temp summon set value {id:"skeleton",hp:240,hpmax:240}
execute as @n[type=minecraft:skeleton,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon] at @s run function pc:sys/object/summon/use