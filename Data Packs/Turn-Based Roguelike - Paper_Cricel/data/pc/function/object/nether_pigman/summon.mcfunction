
# effect
summon minecraft:zombified_piglin ~ ~ ~ {Tags:["pc.summon","pc.object.mob"],equipment:{mainhand:{id:"minecraft:golden_sword",count:1}}}

# Attribute
data modify storage pc:temp summon set value {id:"nether_pigman",hp:180,hpmax:180}
execute as @n[type=minecraft:zombified_piglin,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon] at @s run function pc:sys/object/summon/use