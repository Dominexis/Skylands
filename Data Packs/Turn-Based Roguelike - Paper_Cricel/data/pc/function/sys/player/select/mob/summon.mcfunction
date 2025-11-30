
# effect
function pc:sys/object/intent/icon/clear/all
execute as @e[type=minecraft:marker,distance=..100,tag=pc.grid] at @s run function pc:sys/grid/state/reset_data

scoreboard players operation #this pc.object_id = @s pc.object_id
execute as @e[type=minecraft:marker,distance=..100,tag=pc.intent] if score @s pc.object_id = #this pc.object_id run tag @s add pc.intent.now

execute if entity @n[type=minecraft:item_display,distance=..100,tag=pc.select] as @e[type=minecraft:marker,distance=..100,tag=pc.grid] at @s run function pc:sys/grid/state/color
execute unless entity @n[type=minecraft:item_display,distance=..100,tag=pc.select] as @n[type=minecraft:marker,distance=..100,tag=pc.grid] at @s run function pc:sys/player/select/space/summon/use

# fx
execute as @a[distance=..100,predicate=sl:player,predicate=pc:player/ingame] at @s run playsound minecraft:entity.puffer_fish.blow_up master @s ~ ~ ~ 1 1