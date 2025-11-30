
# effect
summon minecraft:slime ~ ~ ~ {Tags:["pc.summon","pc.object.mob"],Size:1,Passengers:[{id:"minecraft:item_display",Tags:["pc.object.same_rot"],billboard:"fixed",item:{id:"minecraft:player_head",components:{"minecraft:profile":{id:[I;1310741425,-742572001,-1565574059,-1112440229],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjEwOTYwZGVjNTBmNmE3MjAxN2Q5ZTc3YmMwYzdlZTBmMTQwYzA4Zjg5M2I0ZGIyNDQ3MWE1YmJlOWM5YTI3ZCJ9fX0="}]}},count:1},transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.0f,0.0f]},teleport_duration:6}]}

# Attribute
data modify storage pc:temp summon set value {id:"fragile_slime",invisible:1b,hp:200,hpmax:200}
execute as @n[type=minecraft:slime,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon] at @s run function pc:sys/object/summon/use