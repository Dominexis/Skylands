
# effect
function pc:sys/object/intent/icon/clear/all
execute as @e[type=marker,tag=pc.grid,distance=..100] at @s run function pc:sys/grid/state/reset_data

scoreboard players operation #this pc.object_id = @s pc.object_id
execute as @e[type=marker,tag=pc.intent,distance=..100] if score @s pc.object_id = #this pc.object_id run tag @s add pc.intent.now

execute if entity @n[type=item_display,tag=pc.select,distance=..100] as @e[type=marker,tag=pc.grid,distance=..100] at @s run function pc:sys/grid/state/color
execute unless entity @n[type=item_display,tag=pc.select,distance=..100] as @n[type=marker,tag=pc.grid,distance=..100] at @s run function pc:sys/player/select/space/summon/use

# fx
execute as @a[predicate=sl:player,predicate=pc:player/ingame,distance=..100] at @s run playsound minecraft:entity.puffer_fish.blow_up master @s ~ ~ ~ 1 1