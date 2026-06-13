execute if entity @p[tag=InAdventureTDM] run kill @e[type=minecraft:experience_orb]
xp set @p[tag=InAdventureTDM] 0 points

execute as @e[tag=aj.ravaged_mind.root] at @s positioned ~ ~-2 ~ run function the_darkest_mansion:ravaged_mind/tick
execute as @e[tag=aj.spite.root] at @s positioned ~ ~-2 ~ run function the_darkest_mansion:spite/tick
#Player is making sounds
tag @a remove Loud
execute as @a at @s unless predicate the_darkest_mansion:staying_still unless predicate the_darkest_mansion:sneaking unless block ~ ~-0.1 ~ air run tag @s add Loud

#Detect if player has jumped
execute as @p[tag=InAdventureTDM] at @s if predicate the_darkest_mansion:jumping run scoreboard players set @s Jumped 1
execute as @p[tag=InAdventureTDM] at @s unless predicate the_darkest_mansion:jumping unless block ~ ~-0.1 ~ air unless block ~ ~-0.1 ~ barrier run scoreboard players set @s Jumped 0

#Player has Air Walker Boots
execute as @p[tag=InAdventureTDM] at @s if items entity @s armor.feet minecraft:diamond_boots run function the_darkest_mansion:air_walker_boots
execute as @p[tag=InAdventureTDM] at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run scoreboard players set @s AWBTimer -1

#Timer Ticking
scoreboard players reset @e[tag=!TDMTimer1] TDMTimer1
scoreboard players reset @e[tag=!TDMTimer2] TDMTimer2
scoreboard players add @e[tag=TDMTimer1] TDMTimer1 1
scoreboard players add @e[tag=TDMTimer2] TDMTimer2 1
scoreboard players remove @e[scores={TDMHurtTime=1..}] TDMHurtTime 1

#Reset every Interactions
execute as @e[tag=SpiteHitbox] run function the_darkest_mansion:resetinteraction