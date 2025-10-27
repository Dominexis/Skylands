execute if entity @n[type=minecraft:interaction,distance=..0.1,tag=did.vendor.interact] run return run function did:tick/vendor

execute unless score @s did.player.id = @n[type=minecraft:interaction,distance=..0.1,tag=did.torch.interact] did.player.id run return run execute at @s run playsound minecraft:block.note_block.didgeridoo block @s ~ ~ ~
execute if score @s did.player.torch_burn_time matches 1.. run return run execute at @s run playsound minecraft:block.note_block.didgeridoo block @s ~ ~ ~
execute unless entity @n[type=minecraft:item_display,distance=..0.1,tag=did.torch.display.unlit] run return run execute at @s run playsound minecraft:block.note_block.didgeridoo block @s ~ ~ ~
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{did:{lighter:1}}] run return run execute at @s run playsound minecraft:block.note_block.didgeridoo block @s ~ ~ ~
execute if score @s did.player.lighter_uses matches 2.. run return run execute at @s run playsound minecraft:block.note_block.didgeridoo block @s ~ ~ ~

playsound minecraft:block.tripwire.click_on block @a[distance=..40,team=sl.player] ~ ~ ~
scoreboard players add @s did.player.lighter_uses 1
scoreboard players set @s did.player.torch_burn_time 600

execute at @n[type=minecraft:item_display,distance=..0.1,tag=did.torch.display.unlit] run setblock ~ ~ ~ minecraft:light[level=15]
tag @n[type=minecraft:item_display,distance=..0.1,tag=did.torch.display.unlit] add did.torch.display.lit
execute as @n[type=minecraft:item_display,distance=..0.1,tag=did.torch.display.unlit] run data modify entity @s item.components."minecraft:item_model" set value "did:torch"
tag @n[type=minecraft:item_display,distance=..0.1,tag=did.torch.display.unlit] remove did.torch.display.unlit
