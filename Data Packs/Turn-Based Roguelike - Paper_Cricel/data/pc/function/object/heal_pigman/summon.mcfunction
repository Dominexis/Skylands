
# effect
summon minecraft:zombified_piglin ~ ~ ~ {Tags:["pc.summon","pc.object.mob"],equipment:{mainhand:{id:"minecraft:paper",components:{"minecraft:item_model":"pc:shop/cure"}},offhand:{id:"minecraft:zombified_piglin_spawn_egg"},head:{id:"minecraft:turtle_helmet",components:{"minecraft:trim":{material:"gold",pattern:"ward"}}}}}

# Attribute
data modify storage pc:temp summon set value {id:"heal_pigman",hp:250,hpmax:500}
execute as @n[type=minecraft:zombified_piglin,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon] at @s run function pc:sys/object/summon/use