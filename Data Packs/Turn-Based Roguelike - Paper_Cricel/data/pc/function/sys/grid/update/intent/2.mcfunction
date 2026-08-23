## (exe) current entity's intent in this block

scoreboard players set #is_intent pc.main 1
execute store success score #is_potential pc.main if entity @s[tag=pc.intent.potential]
data modify storage pc:temp grid.avail set from entity @s data.avail