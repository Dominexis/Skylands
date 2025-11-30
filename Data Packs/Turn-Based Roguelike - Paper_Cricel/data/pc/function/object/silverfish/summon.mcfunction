
# effect
summon silverfish ~ ~ ~ {Tags:["pc.summon","pc.object.mob","pc.fx.silverfish"]}

    # Attribute
data modify storage pc:temp summon set value {id:'silverfish',hp:400,hpmax:400,silverfish_count:1}
execute as @n[type=silverfish,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/object/summon/use