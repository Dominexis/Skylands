kill @e[x=-2319,y=62,z=2318,dx=1,dz=1,type=#sanct:spell/rune_altar,tag=sanct.altar]
fill -2319 61 2318 -2318 61 2319 minecraft:crying_obsidian

execute positioned -2318.0 62 2319.0 run playsound minecraft:block.beacon.deactivate block @a[distance=..16] ~ ~ ~ 1 0
particle minecraft:large_smoke -2318.0 62.2 2319.0 0.4 0 0.4 0 50

summon minecraft:item -2318.0 62 2319.0 {PickupDelay:40s,Age:-32768,Item:{id:"minecraft:blade_pottery_sherd",components:{"minecraft:item_name":"§3Rune §8(Void)","minecraft:item_model":"minecraft:snout_armor_trim_smithing_template","minecraft:lore":["","§7When in Inventory:","§9+5.5 Attack Damage","§9+5 Armor","§9+2 Armor Toughness","§9+2 Max Health","§9+1.5 Attack Speed","§9+1 Jump Height","§9+0.5 Step Height","§9+10% Attack Reach","§9+10% Movement Speed","§9+Fall Damage Immunity","§9+Knockback Immunity"],"minecraft:max_stack_size":99,"minecraft:custom_data":{rune:{air:true,earth:true,fire:true,water:true,void:true}},"minecraft:enchantments":{"minecraft:channeling":1},"minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]},"minecraft:enchantment_glint_override":false}},Tags:["sanct.altar_crafted"]}

scoreboard players set #altar_requires_reset sanct.numbers 1