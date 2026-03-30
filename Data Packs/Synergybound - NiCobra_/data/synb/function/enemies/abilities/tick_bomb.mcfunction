# As/At : bomb (enemy_associate)
##

execute unless score @s synb.Enemy.GenericCD matches 0.. run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 2 0.7
execute unless score @s synb.Enemy.GenericCD matches 0.. run scoreboard players set @s synb.Enemy.GenericCD 60

effect give @s minecraft:glowing infinite 0 true
particle minecraft:smoke ~ ~-0.2 ~ 0 0 0 0.1 2
execute unless score @s synb.Enemy.GenericCD matches ..15 run rotate @s ~15 ~
execute if score @s synb.Enemy.GenericCD matches ..15 run rotate @s ~40 ~
execute if score @s synb.Enemy.GenericCD matches ..15 run particle minecraft:smoke ~ ~-0.2 ~ 0 0 0 0.1 4
particle minecraft:dust{color:[0.1,0.1,0.1],scale:0.7} ~ ~2 ~ 0.0 2 0.0 0.3 5

execute if score @s synb.Enemy.GenericCD matches 30 run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 2 0.5
execute if score @s synb.Enemy.GenericCD matches 20 run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 2 0.5
execute if score @s synb.Enemy.GenericCD matches 10 run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 2 1.0

execute if score t2 synb.TickCycle matches 1 positioned ~ ~ ~8 run function synb:utils/visuals/draw_circle_black

# Explosion
execute unless score @s synb.Enemy.GenericCD matches 0 run return 0

playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.3
particle minecraft:explosion ~ ~1 ~ 2 1 2 1 15
particle minecraft:dust{color:[0.1,0.1,0.1],scale:0.7} ~ ~0.1 ~ 3.0 0.0 3.0 0.1 200
execute as @a[team=sl.player,tag=synb.attr.player_in_arena,distance=..7.5] run damage @s 4 magic
effect give @a[team=sl.player,tag=synb.attr.player_in_arena,distance=..7.5] minecraft:blindness 5 0 true

execute if score @s synb.Enemy.GenericCD matches 0 run kill @s