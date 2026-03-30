
# effect
execute store result score #random pc.main run random value 1..3
execute if score #random pc.main matches 1 anchored eyes facing entity @n[type=minecraft:item_display,distance=..100,tag=pc.mob.ender_dragon] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~2.5 ~5
execute if score #random pc.main matches 2 anchored eyes facing entity @n[type=minecraft:item_display,distance=..100,tag=pc.mob.ender_dragon] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~2.5 ~2.5
execute if score #random pc.main matches 3 anchored eyes facing entity @n[type=minecraft:item_display,distance=..100,tag=pc.mob.ender_dragon] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~2.5 ~0
execute at @s run function pc:object/ender_dragon/interphase/around/3
execute at @s run function pc:object/ender_dragon/interphase/around/3
execute at @s run function pc:object/ender_dragon/interphase/around/3
execute at @s run function pc:object/ender_dragon/interphase/around/3
execute at @s run function pc:object/ender_dragon/interphase/around/3
execute at @s run function pc:object/ender_dragon/interphase/around/3

execute unless entity @e[type=minecraft:item_display,distance=..100,tag=pc.mob.ender_dragon,limit=1] run scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 100.. run kill @s

# fx
