execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{did:{sellable:1}}] run return run playsound block.note_block.didgeridoo master @s ~ ~ ~
playsound entity.experience_orb.pickup master @s ~ ~ ~

execute if items entity @s weapon.mainhand arrow run scoreboard players add @s did.player.quota 1
execute if items entity @s weapon.mainhand emerald run scoreboard players add @s did.player.quota 2
execute if items entity @s weapon.mainhand coal run scoreboard players add @s did.player.quota 1
execute if items entity @s weapon.mainhand raw_iron run scoreboard players add @s did.player.quota 2
execute if items entity @s weapon.mainhand iron_ingot run scoreboard players add @s did.player.quota 3
execute if items entity @s weapon.mainhand raw_gold run scoreboard players add @s did.player.quota 2
execute if items entity @s weapon.mainhand gold_ingot run scoreboard players add @s did.player.quota 3
execute if items entity @s weapon.mainhand wheat run scoreboard players add @s did.player.quota 2
execute if items entity @s weapon.mainhand gunpowder run scoreboard players add @s did.player.quota 1
execute if items entity @s weapon.mainhand bone run scoreboard players add @s did.player.quota 1
execute if items entity @s weapon.mainhand potato run scoreboard players add @s did.player.quota 2
execute if items entity @s weapon.mainhand iron_nugget run scoreboard players add @s did.player.quota 2
execute if items entity @s weapon.mainhand diamond run scoreboard players add @s did.player.quota 4

execute if items entity @s weapon.mainhand shield run scoreboard players add @s did.player.quota 5
execute if items entity @s weapon.mainhand bow run scoreboard players add @s did.player.quota 5
execute if items entity @s weapon.mainhand crossbow run scoreboard players add @s did.player.quota 5
execute if items entity @s weapon.mainhand iron_axe run scoreboard players add @s did.player.quota 5
execute if items entity @s weapon.mainhand iron_sword run scoreboard players add @s did.player.quota 5
execute if items entity @s weapon.mainhand iron_leggings run scoreboard players add @s did.player.quota 6
execute if items entity @s weapon.mainhand iron_helmet run scoreboard players add @s did.player.quota 6
execute if items entity @s weapon.mainhand iron_chestplate run scoreboard players add @s did.player.quota 6
execute if items entity @s weapon.mainhand iron_boots run scoreboard players add @s did.player.quota 6
execute if items entity @s weapon.mainhand golden_carrot run scoreboard players add @s did.player.quota 4
execute if items entity @s weapon.mainhand diamond_chestplate run scoreboard players add @s did.player.quota 7
execute if items entity @s weapon.mainhand diamond_leggings run scoreboard players add @s did.player.quota 7
execute if items entity @s weapon.mainhand diamond_boots run scoreboard players add @s did.player.quota 7
execute if items entity @s weapon.mainhand diamond_helmet run scoreboard players add @s did.player.quota 7
execute if items entity @s weapon.mainhand diamond_sword run scoreboard players add @s did.player.quota 6
execute if items entity @s weapon.mainhand diamond_axe run scoreboard players add @s did.player.quota 6
execute if items entity @s weapon.mainhand diamond_shovel run scoreboard players add @s did.player.quota 6

item modify entity @s weapon.mainhand did:count
