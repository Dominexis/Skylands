# As/At : merchant_button
##

execute if entity @s[tag=!synb.attr.pressed] if block ~ ~ ~ #minecraft:buttons[powered=true] run function synb:elements/merchant_button/_trigger
execute if block ~ ~ ~ #minecraft:buttons[powered=false] run tag @s remove synb.attr.pressed

particle minecraft:dust{color:[1.0,1.0,1.0],scale:0.4} ~ ~0.2 ~ 0.1 0.1 0.1 0.01 1