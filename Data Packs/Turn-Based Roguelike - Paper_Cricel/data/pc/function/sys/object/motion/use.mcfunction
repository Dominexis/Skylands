
# effect
execute store result entity @s data.sys.motion double 0.1 run data get entity @s Pos[1] 10

execute at @s run summon item ~ ~ ~ {Tags:[pc.sys.object.motion,"pc.summon"],Item:{id:"stone",components:{"minecraft:item_model":air}},PickupDelay:-1s}
execute positioned 0.0 0.0 0.0 rotated ~ 0 summon marker run function pc:sys/object/motion/2
ride @s mount @e[type=item,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1]
tag @e[type=item,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] remove pc.summon

# fx