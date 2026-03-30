
# effect
effect clear @s invisibility
data modify entity @s data.height set value 0.25f

#scoreboard players reset @s pc.object.no_targetable

execute as @n[type=item_display,tag=pc.fx.stone_form,distance=..100] at @s run function pc:void
function pc:fx/silverfish/use

# fx