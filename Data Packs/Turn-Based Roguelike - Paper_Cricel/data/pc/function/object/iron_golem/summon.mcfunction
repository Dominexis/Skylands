
# effect
summon iron_golem ~ ~ ~ {Tags:["pc.summon","pc.object.mob"]}

    # Attribute
data modify storage pc:temp summon set value {id:'iron_golem',hp:480,hpmax:480}
execute as @n[type=iron_golem,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/object/summon/use