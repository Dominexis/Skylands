
# effect
summon item_display ~ ~ ~ {Tags:[pc.object.mob,"pc.summon",pc.mob.ender_eye.hole]}

    # Attribute
data modify storage pc:temp summon set value {id:'ender_eye/attack2/hole',hp:230,hpmax:230,height:0.6f}
execute as @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] at @s run function pc:sys/object/summon/use