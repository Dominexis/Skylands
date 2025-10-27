execute if score @s did.player.quota matches 690.. at @s run function did:misc/complete_island

title @s[tag=did.player.logged] actionbar {translate:"did.game.actionbar",with:[{color:"red",score:{name:"@s",objective:"did.player.lighter_uses"},type:"score"},{color:"red",score:{name:"@s",objective:"did.player.quota"},type:"score"}],type:"translatable"}


execute store result score @s did.player.item_count run clear @s *[minecraft:custom_data~{did:{torch-all:1}}] 0
execute if score @s did.player.item_count matches 2.. run clear @s *[minecraft:custom_data~{did:{torch-all:1}}]
execute store result score @s did.player.item_count run clear @s *[minecraft:custom_data~{did:{lighter-all:1}}] 0
execute if score @s did.player.item_count matches 2.. run clear @s *[minecraft:custom_data~{did:{lighter-all:1}}]
execute store result score @s did.player.item_count run clear @s *[minecraft:custom_data~{did:{brush:1}}] 0
execute if score @s did.player.item_count matches 2.. run clear @s *[minecraft:custom_data~{did:{brush:1}}]

effect give @s[tag=did.player.logged] minecraft:blindness 2 0 true
effect give @s[tag=did.player.logged] minecraft:strength 2 0 true

execute at @s if entity @s[tag=did.player.logged] if items entity @s player.cursor *[minecraft:custom_data~{did:{no_drop:1}}] run item replace entity @s player.cursor with minecraft:air
execute at @s if entity @s[tag=did.player.logged] if items entity @s player.crafting.* *[minecraft:custom_data~{did:{no_drop:1}}] run item replace entity @s player.crafting.0 with minecraft:air
execute at @s if entity @s[tag=did.player.logged] if items entity @s player.crafting.* *[minecraft:custom_data~{did:{no_drop:1}}] run item replace entity @s player.crafting.1 with minecraft:air
execute at @s if entity @s[tag=did.player.logged] if items entity @s player.crafting.* *[minecraft:custom_data~{did:{no_drop:1}}] run item replace entity @s player.crafting.2 with minecraft:air
execute at @s if entity @s[tag=did.player.logged] if items entity @s player.crafting.* *[minecraft:custom_data~{did:{no_drop:1}}] run item replace entity @s player.crafting.3 with minecraft:air

execute at @s if entity @s[tag=did.player.logged] if score @s did.player.lighter_uses matches 2.. run clear @s *[minecraft:custom_data~{did:{lighter:1}}]
execute at @s if entity @s[tag=did.player.logged] unless score @s did.player.lighter_uses matches 2.. run clear @s *[minecraft:custom_data~{did:{lighter_unlit:1}}]
execute at @s if entity @s[tag=did.player.logged] unless items entity @s weapon.* *[minecraft:custom_data~{did:{lighter-all:1}}] unless items entity @s container.* *[minecraft:custom_data~{did:{lighter-all:1}}] if score @s did.player.lighter_uses matches 2.. run function did:misc/unlit_lighter_give

execute at @s if entity @s[tag=did.player.logged] unless score @s did.player.torch.placed matches 1.. if score @s did.player.torch_burn_time matches 0 run clear @s *[minecraft:custom_data~{did:{torch:1}}]
execute at @s if entity @s[tag=did.player.logged] unless score @s did.player.torch.placed matches 1.. unless score @s did.player.torch_burn_time matches 0 run clear @s *[minecraft:custom_data~{did:{torch_unlit:1}}]
execute at @s if entity @s[tag=did.player.logged] unless score @s did.player.torch.placed matches 1.. unless items entity @s weapon.* *[minecraft:custom_data~{did:{torch-all:1}}] unless items entity @s container.* *[minecraft:custom_data~{did:{torch-all:1}}] if score @s did.player.torch_burn_time matches 0 run function did:misc/unlit_torch_give
execute at @s if entity @s[tag=did.player.logged] unless score @s did.player.torch.placed matches 1.. if score @s did.player.torch_burn_time matches 0 if items entity @s weapon.offhand *[minecraft:custom_data~{did:{torch:1}}] run function did:misc/unlit_torch_give
execute at @s if entity @s[tag=did.player.logged] unless score @s did.player.torch.placed matches 1.. if score @s did.player.torch_burn_time matches 0 if items entity @s container.* *[minecraft:custom_data~{did:{torch:1}}] run function did:misc/unlit_torch_give


execute at @s if entity @s[tag=did.player.logged] unless items entity @s weapon.* *[minecraft:custom_data~{did:{brush:1}}] unless items entity @s container.* *[minecraft:custom_data~{did:{brush:1}}] run loot give @s loot did:item/brush
execute at @s if entity @s[tag=did.player.logged] unless score @s did.player.torch.placed matches 1.. unless items entity @s weapon.* *[minecraft:custom_data~{did:{torch-all:1}}] unless items entity @s container.* *[minecraft:custom_data~{did:{torch-all:1}}] run loot give @s loot did:item/torch
execute at @s if entity @s[tag=did.player.logged] unless items entity @s weapon.* *[minecraft:custom_data~{did:{lighter-all:1}}] unless items entity @s container.* *[minecraft:custom_data~{did:{lighter-all:1}}] run loot give @s loot did:item/lighter

