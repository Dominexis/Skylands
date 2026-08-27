execute positioned ~ ~ ~5 run function synb:utils/visuals/draw_circle
scoreboard players reset @s synb.Item.vibration.rythm
playsound minecraft:block.amethyst_block.step player @s ~ ~ ~ 0.3 1.7
execute as @e[type=!minecraft:player,tag=synb.type.enemy,distance=..5.5] run function synb:itemengine/player/damage_enemy {dmg:1}