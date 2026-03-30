execute anchored eyes positioned ^ ^ ^ positioned ~ ~-0.1 ~ as @e[type=minecraft:snowball,distance=..2,tag=!sanct.teleport_item,limit=1] run data modify entity @s Item.components.minecraft:item_model set value "minecraft:ender_pearl"
execute positioned ~ ~1.46 ~ summon minecraft:marker positioned ~ ~-1.46 ~ run function sanct:spell/alchemy/teleport_item/set_marker

schedule function sanct:spell/alchemy/teleport_item/clock 1

item replace entity @s weapon.mainhand with minecraft:snowball[minecraft:item_name="§4Ender Heart",minecraft:custom_data={teleport_item:{}},minecraft:lore=["§7§oThrows ender pearls.","§7§oHeal after teleporting."],minecraft:max_stack_size=1,minecraft:item_model="minecraft:enderman_spawn_egg",minecraft:use_cooldown={seconds:1,cooldown_group:"sanct:teleport_item"}]
scoreboard players set @s sanct.spell.teleport_item 0