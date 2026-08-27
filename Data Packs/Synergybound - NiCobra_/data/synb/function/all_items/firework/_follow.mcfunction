scoreboard players reset #mount synb.Tmp.Expr
execute on vehicle run scoreboard players set #mount synb.Tmp.Expr 1
execute if score #mount synb.Tmp.Expr matches 1 run return 0

# Visuals
execute store result storage synb.d:tmp args.shape_i int 1 run random value 0..4
execute store result storage synb.d:tmp args.twinkle_i int 1 run random value 0..1
execute store result storage synb.d:tmp args.trail_i int 1 run random value 0..1
execute store result storage synb.d:tmp args.colors_i int 1 run random value 0..9
execute store result storage synb.d:tmp args.fade_colors_i int 1 run random value 0..9
function synb:all_items/firework/_spawn_explosion with storage synb.d:tmp args

# Protect players
tag @a[team=sl.player,tag=synb.type.player,distance=..5] add synb.item.firework.resistance
effect give @a[team=sl.player,tag=synb.type.player,distance=..5] minecraft:resistance 1 255 true

# Damage enemies
execute as @e[type=!minecraft:player,tag=synb.type.enemy,distance=..5,sort=nearest] at @s run function synb:all_items/firework/_affected
kill @s