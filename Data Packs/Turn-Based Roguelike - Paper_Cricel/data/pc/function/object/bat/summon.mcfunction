
# effect
summon bat ~ ~1 ~ {Tags:["pc.summon","pc.object.mob"],attributes:[{id:scale,base:1.25}]}

    # Attribute
data modify storage pc:temp summon set value {id:'bat',hp:150,hpmax:150}
execute as @n[type=bat,tag=pc.summon,distance=..100] at @s run function pc:sys/object/summon/use