
# effect
effect clear @s minecraft:invisibility
data modify entity @s data.height set value 0.25f

#scoreboard players reset @s pc.object.no_targetable

execute as @n[type=minecraft:item_display,distance=..100,tag=pc.fx.stone_form] at @s run function pc:void
function pc:fx/silverfish/use

# fx