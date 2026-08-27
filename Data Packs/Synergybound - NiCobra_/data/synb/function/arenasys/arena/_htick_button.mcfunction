# As : arena
# At : wave_button
##

scoreboard players set #standard synb.Tmp.Expr 0
scoreboard players set #ultimate synb.Tmp.Expr 0
scoreboard players set #last synb.Tmp.Expr 0
execute if entity @s[tag=synb.attr.disable_special_wave,scores={synb.ASys.ArenaID=2,synb.ASys.CurrentCycle=2}] run scoreboard players set #standard synb.Tmp.Expr 1
execute if score @s synb.ASys.ArenaID matches 3 if score @s synb.ASys.CurrentCycle matches 2 run scoreboard players set #ultimate synb.Tmp.Expr 1
scoreboard players operation #last synb.Tmp.Expr += #standard synb.Tmp.Expr
scoreboard players operation #last synb.Tmp.Expr += #ultimate synb.Tmp.Expr

execute if block ~ ~ ~ #minecraft:buttons[powered=false] unless score @s synb.ASys.CurrentCycle = @s synb.ASys.MaxCycle unless score #last synb.Tmp.Expr matches 1 run particle minecraft:flame ~ ~0.5 ~ 0 1 0 0.01 1
execute if block ~ ~ ~ #minecraft:buttons[powered=false] if score @s synb.ASys.CurrentCycle = @s synb.ASys.MaxCycle unless score #last synb.Tmp.Expr matches 1 run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 1 0 0.01 1
execute if block ~ ~ ~ #minecraft:buttons[powered=false] if score #last synb.Tmp.Expr matches 1 run particle minecraft:copper_fire_flame ~ ~0.5 ~ 0 2 0 0.02 2

execute if block ~ ~ ~ #minecraft:buttons[powered=false] unless entity @e[type=minecraft:text_display,tag=synb.type.text,distance=..1] run summon minecraft:text_display ~ ~0.5 ~ {Tags:["synb.type.text"],alignment:"center",billboard:"center"}
execute unless block ~ ~ ~ #minecraft:buttons[powered=false] run kill @e[type=minecraft:text_display,tag=synb.type.text,distance=..1]

execute if score t20 synb.TickCycle matches 1 unless score @s synb.ASys.CurrentCycle = @s synb.ASys.MaxCycle unless score #ultimate synb.Tmp.Expr matches 1 run data modify entity @e[type=minecraft:text_display,tag=synb.type.text,distance=..1,limit=1] text set value [{"text":"Start round","bold":true,"color":"white"}]
execute if score t20 synb.TickCycle matches 1 if score @s synb.ASys.CurrentCycle = @s synb.ASys.MaxCycle unless score #ultimate synb.Tmp.Expr matches 1 run data modify entity @e[type=minecraft:text_display,tag=synb.type.text,distance=..1,limit=1] text set value [{"text":"Start optional challenge","bold":true,"color":"white"}]
execute if score t20 synb.TickCycle matches 1 if score #standard synb.Tmp.Expr matches 1 run data modify entity @e[type=minecraft:text_display,tag=synb.type.text,distance=..1,limit=1] text set value [{"text":"Start LAST round","bold":true,"color":"white"}]
execute if score t20 synb.TickCycle matches 1 if score #ultimate synb.Tmp.Expr matches 1 run data modify entity @e[type=minecraft:text_display,tag=synb.type.text,distance=..1,limit=1] text set value [{"text":"Start ULTIMATE round","bold":true,"color":"white"}]
execute if score t20 synb.TickCycle matches 11 unless score @s synb.ASys.CurrentCycle = @s synb.ASys.MaxCycle unless score #ultimate synb.Tmp.Expr matches 1 run data modify entity @e[type=minecraft:text_display,tag=synb.type.text,distance=..1,limit=1] text set value [{"text":"Start round","bold":true,"color":"yellow"}]
execute if score t20 synb.TickCycle matches 11 if score @s synb.ASys.CurrentCycle = @s synb.ASys.MaxCycle unless score #ultimate synb.Tmp.Expr matches 1 run data modify entity @e[type=minecraft:text_display,tag=synb.type.text,distance=..1,limit=1] text set value [{"text":"Start optional challenge","bold":true,"color":"aqua"}]
execute if score t20 synb.TickCycle matches 11 if score #standard synb.Tmp.Expr matches 1 run data modify entity @e[type=minecraft:text_display,tag=synb.type.text,distance=..1,limit=1] text set value [{"text":"Start LAST round","bold":true,"color":"green"}]
execute if score t20 synb.TickCycle matches 11 if score #ultimate synb.Tmp.Expr matches 1 run data modify entity @e[type=minecraft:text_display,tag=synb.type.text,distance=..1,limit=1] text set value [{"text":"Start ULTIMATE round","bold":true,"color":"green"}]

# Trigger
execute if block ~ ~ ~ #minecraft:buttons[powered=true] run scoreboard players set @s synb.ASys.Started 1
execute if block ~ ~ ~ #minecraft:buttons[powered=true] run particle minecraft:end_rod ~ ~0.2 ~ 0 0 0 0.2 15
execute if block ~ ~ ~ #minecraft:buttons[powered=true] as @s at @s run function synb:arenasys/arena/_cycle_start
execute if block ~ ~ ~ #minecraft:buttons[powered=true] as @s at @s run function synb:arenasys/arena/_close_shop_door
execute if block ~ ~ ~ #minecraft:buttons[powered=true] run setblock ~ ~ ~ minecraft:air destroy