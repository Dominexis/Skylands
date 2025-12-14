scoreboard players set lvl numCorrect 0
scoreboard players add @a attempts 1
$execute at @e[tag=l$(lvl),tag=sol0] if block ~ ~ ~ minecraft:red_wool run scoreboard players add lvl numCorrect 1
$execute at @e[tag=l$(lvl),tag=sol1] if block ~ ~ ~ minecraft:orange_wool run scoreboard players add lvl numCorrect 1
$execute at @e[tag=l$(lvl),tag=sol2] if block ~ ~ ~ minecraft:yellow_wool run scoreboard players add lvl numCorrect 1
$execute at @e[tag=l$(lvl),tag=sol3] if block ~ ~ ~ minecraft:lime_wool run scoreboard players add lvl numCorrect 1
$execute at @e[tag=l$(lvl),tag=sol4] if block ~ ~ ~ minecraft:blue_wool run scoreboard players add lvl numCorrect 1
$execute at @e[tag=l$(lvl),tag=sol5] if block ~ ~ ~ minecraft:purple_wool run scoreboard players add lvl numCorrect 1
$tellraw @a [{"text":"Number of correct guesses: "}, {"score":{"name":"lvl","objective":"numCorrect"}},{"text":"/$(numMobs)"}]
$kill @e[tag=l$(lvl),tag=ans_text]

## UPDATE LEVEL PROGRESS
execute if score @p curr_level matches 0 run scoreboard players operation l0 progress = lvl numCorrect
execute if score @p curr_level matches 1 run scoreboard players operation l1 progress = lvl numCorrect
execute if score @p curr_level matches 2 run scoreboard players operation l2 progress = lvl numCorrect
execute if score @p curr_level matches 3 run scoreboard players operation l3 progress = lvl numCorrect
execute if score @p curr_level matches 4 run scoreboard players operation l4 progress = lvl numCorrect
execute if score @p curr_level matches 5 run scoreboard players operation l5 progress = lvl numCorrect
execute if score @p curr_level matches 6 run scoreboard players operation l6 progress = lvl numCorrect
execute if score @p curr_level matches 7 run scoreboard players operation l7 progress = lvl numCorrect
execute if score @p curr_level matches 8 run scoreboard players operation l8 progress = lvl numCorrect
execute if score @p curr_level matches 9 run scoreboard players operation l9 progress = lvl numCorrect

## UPDATE PROGRESS BARS
scoreboard players operation isle1 progress = l1 progress
scoreboard players operation isle1 progress += l2 progress
scoreboard players operation isle1 progress += l3 progress
execute store result bossbar minecraft:isle1 value run scoreboard players get isle1 progress

scoreboard players operation isle2 progress = l4 progress
execute store result bossbar minecraft:isle2 value run scoreboard players get isle2 progress

scoreboard players operation isle3 progress = l5 progress
execute store result bossbar minecraft:isle3 value run scoreboard players get isle3 progress

scoreboard players operation isle4 progress = l6 progress
scoreboard players operation isle4 progress += l7 progress
execute store result bossbar minecraft:isle4 value run scoreboard players get isle4 progress

execute at @e[type=marker, tag=CENTER] as @p[distance=..256] if score @s curr_level matches 8 run scoreboard players operation isle5a progress = l8 progress
execute store result bossbar minecraft:isle5a value run scoreboard players get isle5a progress

execute at @e[type=marker, tag=CENTER] as @p[distance=..256] if score @s curr_level matches 9 run scoreboard players operation isle5b progress = l9 progress
execute store result bossbar minecraft:isle5b value run scoreboard players get isle5b progress

## RESULTS
$execute if score lvl numCorrect matches $(numMobs) run schedule function epc:l$(lvl)/complete 6t
$execute if score lvl numCorrect matches $(numMobs) run schedule function epc:ans/update 5t
$execute unless score lvl numCorrect matches $(numMobs) run function epc:incorrect
$execute unless score lvl numCorrect matches $(numMobs) run schedule function epc:ans/update 2s
setblock ~ ~ ~ air