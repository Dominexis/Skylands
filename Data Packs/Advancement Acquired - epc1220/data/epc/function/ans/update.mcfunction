execute if score @p curr_level matches 1 if score lvl numCorrect matches 1.. at @e[tag=l1,tag=ans] run setblock ~ ~-1 ~ minecraft:grass_block
execute if score @p curr_level matches 1 if score lvl numCorrect matches 0 at @e[tag=l1,tag=ans_switch] run function epc:ans/trigger {lvl:1}

execute if score @p curr_level matches 2 if score lvl numCorrect matches 1.. at @e[tag=l2,tag=ans] run setblock ~ ~-1 ~ minecraft:grass_block
execute if score @p curr_level matches 2 if score lvl numCorrect matches 0 at @e[tag=l2,tag=ans_switch] run function epc:ans/trigger {lvl:2}

execute if score @p curr_level matches 3 if score lvl numCorrect matches 1.. at @e[tag=l3,tag=ans] run setblock ~ ~-1 ~ minecraft:grass_block
execute if score @p curr_level matches 3 if score lvl numCorrect matches 0 at @e[tag=l3,tag=ans_switch] run function epc:ans/trigger {lvl:3}

execute if score @p curr_level matches 4 if score lvl numCorrect matches 1.. at @e[tag=l4,tag=ans] run setblock ~ ~-1 ~ minecraft:snow_block
execute if score @p curr_level matches 4 if score lvl numCorrect matches 0 at @e[tag=l4,tag=ans_switch] run function epc:ans/trigger {lvl:4}

execute if score @p curr_level matches 5 if score lvl numCorrect matches 1.. at @e[tag=l5,tag=ans] run setblock ~ ~-1 ~ minecraft:sand
execute if score @p curr_level matches 5 if score lvl numCorrect matches 0 at @e[tag=l5,tag=ans_switch] run function epc:ans/trigger {lvl:5}

execute if score @p curr_level matches 6 if score lvl numCorrect matches 1.. at @e[tag=l6,tag=ans] run setblock ~ ~-1 ~ minecraft:grass_block
execute if score @p curr_level matches 6 if score lvl numCorrect matches 0 at @e[tag=l6,tag=ans_switch] run function epc:ans/trigger {lvl:6}

execute if score @p curr_level matches 7 if score lvl numCorrect matches 1.. at @e[tag=l7,tag=ans] run setblock ~ ~-1 ~ minecraft:stone
execute if score @p curr_level matches 7 if score lvl numCorrect matches 0 at @e[tag=l7,tag=ans_switch] run function epc:ans/trigger {lvl:7}

execute if score @p curr_level matches 8 if score lvl numCorrect matches 1.. at @e[tag=l8,tag=ans] run setblock ~ ~-1 ~ minecraft:crimson_nylium
execute if score @p curr_level matches 8 if score lvl numCorrect matches 0 at @e[tag=l8,tag=ans_switch] run function epc:ans/trigger {lvl:8}

execute if score @p curr_level matches 9 if score lvl numCorrect matches 1.. at @e[tag=l9,tag=ans] run setblock ~ ~-1 ~ minecraft:sand
execute if score @p curr_level matches 9 if score lvl numCorrect matches 0 at @e[tag=l9,tag=ans_switch] run function epc:ans/trigger {lvl:9}