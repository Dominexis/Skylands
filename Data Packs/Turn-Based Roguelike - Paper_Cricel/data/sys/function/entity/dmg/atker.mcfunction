## (tag) pc.atker

execute if data storage pc:temp damage.operand run scoreboard players set #damage pc.main 0
execute as @e[tag=pc.atker,limit=1] at @s run function sys:utils/passive/use {passive:"on_attack"}

execute as @e[predicate=sys:entity/victim] at @s run function sys:entity/dmg/victim

execute as @e[tag=pc.atker,limit=1] at @s run function sys:utils/passive/use {passive:"after_attack"}
data remove storage pc:temp damage