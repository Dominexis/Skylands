
# effect
summon zombie ~ ~ ~ {Tags:["pc.summon","pc.object.mob"],equipment:{mainhand:{id:"minecraft:wooden_sword",count:1},head:{id:"minecraft:leather_helmet",count:1}}}

    # Attribute
data modify storage pc:temp summon set value {id:'zombie',hp:200,hpmax:200}
execute as @n[type=zombie,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/object/summon/use