execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{did:{sellable:1}}] run return run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

execute if items entity @s weapon.mainhand minecraft:arrow run scoreboard players add @s did.player.quota 1
execute if items entity @s weapon.mainhand minecraft:emerald run scoreboard players add @s did.player.quota 2
execute if items entity @s weapon.mainhand minecraft:coal run scoreboard players add @s did.player.quota 1
execute if items entity @s weapon.mainhand minecraft:raw_iron run scoreboard players add @s did.player.quota 2
execute if items entity @s weapon.mainhand minecraft:iron_ingot run scoreboard players add @s did.player.quota 3
execute if items entity @s weapon.mainhand minecraft:raw_gold run scoreboard players add @s did.player.quota 2
execute if items entity @s weapon.mainhand minecraft:gold_ingot run scoreboard players add @s did.player.quota 3
execute if items entity @s weapon.mainhand minecraft:wheat run scoreboard players add @s did.player.quota 2
execute if items entity @s weapon.mainhand minecraft:gunpowder run scoreboard players add @s did.player.quota 1
execute if items entity @s weapon.mainhand minecraft:bone run scoreboard players add @s did.player.quota 1
execute if items entity @s weapon.mainhand minecraft:potato run scoreboard players add @s did.player.quota 2
execute if items entity @s weapon.mainhand minecraft:iron_nugget run scoreboard players add @s did.player.quota 2
execute if items entity @s weapon.mainhand minecraft:diamond run scoreboard players add @s did.player.quota 4

execute if items entity @s weapon.mainhand minecraft:shield run scoreboard players add @s did.player.quota 5
execute if items entity @s weapon.mainhand minecraft:bow run scoreboard players add @s did.player.quota 5
execute if items entity @s weapon.mainhand minecraft:crossbow run scoreboard players add @s did.player.quota 5
execute if items entity @s weapon.mainhand minecraft:iron_axe run scoreboard players add @s did.player.quota 5
execute if items entity @s weapon.mainhand minecraft:iron_sword run scoreboard players add @s did.player.quota 5
execute if items entity @s weapon.mainhand minecraft:iron_leggings run scoreboard players add @s did.player.quota 6
execute if items entity @s weapon.mainhand minecraft:iron_helmet run scoreboard players add @s did.player.quota 6
execute if items entity @s weapon.mainhand minecraft:iron_chestplate run scoreboard players add @s did.player.quota 6
execute if items entity @s weapon.mainhand minecraft:iron_boots run scoreboard players add @s did.player.quota 6
execute if items entity @s weapon.mainhand minecraft:golden_carrot run scoreboard players add @s did.player.quota 4
execute if items entity @s weapon.mainhand minecraft:diamond_chestplate run scoreboard players add @s did.player.quota 7
execute if items entity @s weapon.mainhand minecraft:diamond_leggings run scoreboard players add @s did.player.quota 7
execute if items entity @s weapon.mainhand minecraft:diamond_boots run scoreboard players add @s did.player.quota 7
execute if items entity @s weapon.mainhand minecraft:diamond_helmet run scoreboard players add @s did.player.quota 7
execute if items entity @s weapon.mainhand minecraft:diamond_sword run scoreboard players add @s did.player.quota 6
execute if items entity @s weapon.mainhand minecraft:diamond_axe run scoreboard players add @s did.player.quota 6
execute if items entity @s weapon.mainhand minecraft:diamond_shovel run scoreboard players add @s did.player.quota 6

item modify entity @s weapon.mainhand did:count
