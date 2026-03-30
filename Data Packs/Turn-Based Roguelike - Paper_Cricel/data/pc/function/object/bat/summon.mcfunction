
# effect
summon minecraft:bat ~ ~1 ~ {Tags:["pc.summon","pc.object.mob"],attributes:[{id:"minecraft:scale",base:1.25}]}

# Attribute
data modify storage pc:temp summon set value {id:"bat",hp:150,hpmax:150}
execute as @n[type=minecraft:bat,distance=..100,tag=pc.summon] at @s run function pc:sys/object/summon/use