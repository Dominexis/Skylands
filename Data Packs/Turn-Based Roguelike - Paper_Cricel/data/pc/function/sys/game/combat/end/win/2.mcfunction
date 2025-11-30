
# First
function pc:sys/game/combat/tpter/summon with storage pc:game combat.coord
execute if data storage pc:game combat.reward.money run function pc:sys/game/combat/end/win/money/first with storage pc:game combat.reward
execute store result score #game.loot_count pc.main if entity @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player]

execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] at @s run function pc:sys/game/combat/end/win/player/use

# Last
execute if data storage pc:game combat.reward.money run function pc:sys/game/combat/end/win/money/last
execute if data storage pc:game combat.reward.chest at @n[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid.center] run function pc:sys/game/combat/loot/summon with storage pc:game combat.reward
function pc:sys/game/combat/clear