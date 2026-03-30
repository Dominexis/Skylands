
# Buffer
execute if score $game.acting_time pc.main matches 1.. run return fail

# Mob
execute if predicate pc:flags/is_sneak run function pc:sys/player/select/mob/lookat/main
execute if entity @n[predicate=pc:object/all,type=!player,tag=pc.select.object,distance=..100] run return run function pc:sys/player/select/mob/main

# Player
#execute if items entity @s weapon.mainhand paper[custom_data~{pc:{rc:1b}}] run 
function pc:sys/player/select/player/lookat/main
scoreboard players reset #pass pc.main
execute if predicate pc:item_check/not_endturn unless entity @n[type=item_display,tag=pc.select,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run scoreboard players set #pass pc.main 1
execute unless predicate pc:item_check/not_endturn if entity @n[type=item_display,tag=pc.select,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run scoreboard players set #pass pc.main 0

execute if score #pass pc.main matches 0 run function pc:sys/player/select/clear
execute if score #pass pc.main matches 1 run function pc:sys/player/select/player/summon