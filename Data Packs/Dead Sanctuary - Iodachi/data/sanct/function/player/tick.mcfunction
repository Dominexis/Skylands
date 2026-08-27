
# Spellcasting
execute if score @s sanct.trigger matches 1.. run function sanct:player/cast/process

# Modifying snowball into ender pearl
execute if entity @s[scores={sanct.spell.teleport_item=1..}] run function sanct:spell/alchemy/teleport_item/throw

# Visual effects for finale
execute unless score #barrier_unlocked sanct.numbers matches 1.. run return 1
effect give @s minecraft:darkness 1 0 true
particle minecraft:white_ash ~ ~4 ~ 5 5 5 1 40 normal @s