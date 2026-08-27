# As/At : onboard_button
##

execute if block ~ ~ ~ #minecraft:buttons[powered=false] run particle minecraft:flame ~ ~0.5 ~ 0 1 0 0.01 1

execute unless entity @e[type=minecraft:text_display,tag=synb.type.text,distance=..1] run summon minecraft:text_display ~ ~0.5 ~ {Tags:["synb.type.text"],alignment:"center",billboard:"center"}
execute unless block ~ ~ ~ #minecraft:buttons if score t40 synb.TickCycle matches 1 run data modify entity @e[type=minecraft:text_display,tag=synb.type.text,distance=..1,limit=1] text set value [{"text":"Players already in the arena. Please wait !","bold":true,"color":"white"}]
execute if block ~ ~ ~ #minecraft:buttons[powered=false] if score t20 synb.TickCycle matches 1 run data modify entity @e[type=minecraft:text_display,tag=synb.type.text,distance=..1,limit=1] text set value [{"text":"Start the arena","bold":true,"color":"white"}]
execute if block ~ ~ ~ #minecraft:buttons[powered=false] if score t20 synb.TickCycle matches 11 run data modify entity @e[type=minecraft:text_display,tag=synb.type.text,distance=..1,limit=1] text set value [{"text":"Start the arena","bold":true,"color":"yellow"}]

# Trigger
execute if block ~ ~ ~ #minecraft:buttons[powered=true] run function synb:arenasys/onboard/_trigger