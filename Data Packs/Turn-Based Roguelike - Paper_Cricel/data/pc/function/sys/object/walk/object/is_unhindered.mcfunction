
# effect
execute store success score #is_unhindered pc.main if entity @s[tag=pc.intent.unhindered]
execute store success score #has_walk pc.main if entity @n[type=marker,tag=pc.walk.intent,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]

execute if score #is_unhindered pc.main matches 0 run function pc:sys/object/walk/object/act/interrupt
execute if score #is_unhindered pc.main matches 1 if score #has_walk pc.main matches 1 run function pc:sys/object/walk/object/act/schedule
execute if score #is_unhindered pc.main matches 1 if score #has_walk pc.main matches 0 run function pc:sys/object/walk/object/act/interrupt

# fx