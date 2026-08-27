scoreboard players operation @s synb.Item.dash.cd = @s synb.IEStat.ShieldDelay
scoreboard players operation @s synb.Item.dash.cd *= num2 synb.Const

execute if score @s synb.Item.dash.cd matches ..1 run scoreboard players set @s synb.Item.dash.retrigger_count 0
execute if score @s synb.Item.dash.cd matches ..1 run scoreboard players set @s synb.Item.dash.cd 2

scoreboard players set @s synb.Item.dash.retrigger_gap 0
execute if score @s synb.Item.dash.retrigger_count matches 1.. run scoreboard players set @s synb.Item.dash.retrigger_gap 12
scoreboard players remove @s[scores={synb.Item.dash.retrigger_count=1..}] synb.Item.dash.retrigger_count 1

scoreboard players set #dest synb.Tmp.Arg 5
scoreboard players operation #dest synb.Tmp.Arg *= @s synb.IEStat.MovSpeed
scoreboard players operation #dest synb.Tmp.Arg /= num40 synb.Const

execute if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air anchored eyes run function synb:all_items/dash/_rec_dash

playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.7 1.4