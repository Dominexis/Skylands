
execute if data storage pc:game combat.reward.money run function sys:combat/end/win/money/first with storage pc:game combat.reward
execute store result score #game.loot_count pc.main if entity @a

execute as @a at @s run function sys:combat/end/win/player/use

execute if data storage pc:game combat.reward.money run function sys:combat/end/win/money/last
execute if data storage pc:game combat.reward.chest at @e[tag=pc.grid.center,type=minecraft:marker,limit=1] run function sys:combat/end/win/chest/summon

# system
function sys:combat/tpter/summon with storage pc:game combat.coord
function sys:combat/clear