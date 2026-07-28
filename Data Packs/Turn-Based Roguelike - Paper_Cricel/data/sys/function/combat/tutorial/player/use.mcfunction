
tag @s add pc.player.tutorial
function sys:combat/tutorial/player/update

# fx
title @s times 0 30 10
item replace entity @s armor.head with paper[equippable={slot:"head",camera_overlay:"sys:font/background/tutorial",equip_sound:"intentionally_empty"},enchantments={binding_curse:1},enchantment_glint_override=false,tooltip_display={hide_tooltip:1b},item_model="sys:tutorial/head"]
playsound minecraft:block.amethyst_block.resonate master @a ~ ~1024 ~ 0 1.25 1