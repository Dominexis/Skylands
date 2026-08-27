# As/At : sacdoor
##

tag @s remove synb.attr.off
kill @e[type=minecraft:text_display,tag=synb.type.text,distance=..1]

execute store result score @s synb.Shop.SacdoorCondition run random value 1..3 synb.r:run_rng
summon minecraft:text_display ~ ~1.3 ~ {Tags:["synb.type.text"],alignment:"center",billboard:"center",text:[{"text":"Sacrifice Door","bold":true,"color":"red"}]}
execute if score @s synb.Shop.SacdoorCondition matches 1 run summon minecraft:text_display ~ ~1 ~ \
    {Tags:["synb.type.text"],alignment:"center",billboard:"center",text:[{"text":"Take 14 Damage","bold":true,"color":"white"}]}
execute if score @s synb.Shop.SacdoorCondition matches 2 run summon minecraft:text_display ~ ~1 ~ \
    {Tags:["synb.type.text"],alignment:"center",billboard:"center",text:[{"text":"-8 Max Health","bold":true,"color":"white"}]}
execute if score @s synb.Shop.SacdoorCondition matches 3 run summon minecraft:text_display ~ ~1 ~ \
    {Tags:["synb.type.text"],alignment:"center",billboard:"center",text:[{"text":"-3 Reward Heal","bold":true,"color":"white"}]}

function synb:elements/sacdoor/_deco