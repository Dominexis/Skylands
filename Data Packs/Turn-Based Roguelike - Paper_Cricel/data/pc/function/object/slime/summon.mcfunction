
# effect
summon minecraft:slime ~ ~ ~ {Tags:["pc.summon","pc.object.mob"],Size:1}

# Attribute
data modify storage pc:temp summon set value {id:"slime",hp:120,hpmax:120}
execute as @n[type=minecraft:slime,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon] at @s run function pc:sys/object/summon/use