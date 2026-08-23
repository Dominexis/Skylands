
execute if score #loot_count pc.main matches 0 run return run data modify storage pc:utils loot.index set value 0
scoreboard players remove #loot_count pc.main 1
$execute store result storage pc:utils loot.index int 1 run random value 0..$(loot_count)