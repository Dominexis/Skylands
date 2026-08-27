execute if score @s synb.IEExecCount.dash matches 2.. run return 0

execute if score @s[tag=!synb.item.dash.sneaking] synb.Status.Sneak matches 1 unless score @s synb.Item.dash.cd matches 1.. at @s[nbt={OnGround:0b}] run function synb:all_items/dash/_dash_start
execute if score @s[tag=!synb.item.dash.sneaking] synb.Status.Sneak matches 1 if score @s synb.Item.dash.retrigger_gap matches 1.. at @s run function synb:all_items/dash/_dash_start
execute if score @s[tag=!synb.item.dash.sneaking] synb.Status.Sneak matches 1 run tag @s add synb.item.dash.sneaking
execute unless score @s[tag=synb.item.dash.sneaking] synb.Status.Sneak matches 1 run tag @s remove synb.item.dash.sneaking

scoreboard players operation @s[scores={synb.Item.dash.cd=1}] synb.Item.dash.retrigger_count = @s synb.IEItemCount.dash

execute at @s[scores={synb.Item.dash.cd=2}] run playsound minecraft:item.armor.equip_wolf player @s ~ ~ ~ 2 1
execute at @s[scores={synb.Item.dash.cd=2}] run particle minecraft:poof ~ ~0.4 ~ 0.2 1 0.2 0.2 15
execute at @s[scores={synb.Item.dash.cd=1}] run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 1
scoreboard players remove @s[scores={synb.Item.dash.cd=1..}] synb.Item.dash.cd 1

execute at @s[scores={synb.Item.dash.retrigger_gap=10}] run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 2
execute at @s[scores={synb.Item.dash.retrigger_gap=9}] run playsound minecraft:block.note_block.chime player @s ~ ~ ~ 1 2
scoreboard players remove @s[scores={synb.Item.dash.retrigger_gap=1..}] synb.Item.dash.retrigger_gap 1