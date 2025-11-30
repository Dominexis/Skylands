
# effect
summon spider ~ ~ ~ {Tags:["pc.summon","pc.object.mob"]}

    # Attribute
data modify storage pc:temp summon set value {id:'spider',hp:320,hpmax:320}
execute as @n[type=spider,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/object/summon/use