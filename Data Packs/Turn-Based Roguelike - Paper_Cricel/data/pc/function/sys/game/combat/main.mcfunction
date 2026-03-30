
# Selectable Grid
execute as @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.select] at @s run function pc:sys/player/select/space/main
execute as @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.select.clear] at @s run function pc:sys/player/select/space/clear/main

# Intent Icon
execute as @e[type=minecraft:text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent_icon] at @s run function pc:sys/object/intent/icon/main
execute as @e[type=minecraft:text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent_icon.clear] at @s run function pc:sys/object/intent/icon/clear/main

# Turn Cooldown
execute if score $game.acting_time pc.main matches 1.. run function pc:sys/object/turn/acting/main