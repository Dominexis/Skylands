
# effect
scoreboard players operation #this pc.object_id = @s pc.object_id
execute as @e[type=text_display,tag=pc.intent_icon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if score @s pc.object_id = #this pc.object_id at @s run function pc:sys/object/intent/icon/clear/use