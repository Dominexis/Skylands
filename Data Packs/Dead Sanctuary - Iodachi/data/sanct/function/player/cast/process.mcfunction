
scoreboard players enable @s sanct.trigger
execute if predicate sanct:inventory/book/holding_open run function sanct:book/open/close
execute if entity @s[advancements={sanct:tags={acquired_recipe=true}}] run function sanct:player/recipe_acknowledge

# Return if dead
execute if entity @s[x=-2309.5,y=7,z=2307.5,distance=..1] run return run scoreboard players set @s sanct.trigger 0

# Reset goal path delay if players are casting spells
execute if score #goal_path_delay sanct.numbers matches 1.. run scoreboard players set #goal_path_delay sanct.numbers 0

# TEST  THIS

playsound minecraft:block.enchantment_table.use player @a[distance=..16] ~ ~ ~ .8 1.3
particle minecraft:enchant ~ ~1.6 ~ .2 .2 .2 1 100
function sanct:player/storage/load

# Trigger 50-99 = summon
scoreboard players remove @s sanct.trigger 50
execute if score @s sanct.trigger matches 0..49 run return run function sanct:player/cast/get_index {category:"summon"}
# Trigger 100-149 = ritual
scoreboard players remove @s sanct.trigger 50
execute if score @s sanct.trigger matches 0..49 run return run function sanct:player/cast/get_index {category:"ritual"}
# Trigger 150-199 = buff
scoreboard players remove @s sanct.trigger 50
execute if score @s sanct.trigger matches 0..49 run return run function sanct:player/cast/get_index {category:"buff"}
# Trigger 200-249 = alchemy
scoreboard players remove @s sanct.trigger 50
execute if score @s sanct.trigger matches 0..49 run return run function sanct:player/cast/get_index {category:"alchemy"}

# Error handling
tellraw @s {"text":"Spell index out of bounds.","color":"red"}
scoreboard players set @s sanct.trigger 0