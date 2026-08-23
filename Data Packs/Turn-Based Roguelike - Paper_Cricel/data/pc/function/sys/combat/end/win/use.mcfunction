
execute if data storage pc:game combat.reward.money run function pc:sys/combat/end/win/money/first with storage pc:game combat.reward
execute store result score #game.loot_count pc.main if entity @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player]

execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run function pc:sys/combat/end/win/player/use

execute if data storage pc:game combat.reward.money run function pc:sys/combat/end/win/money/last
execute if data storage pc:game combat.reward.chest at @e[tag=pc.grid.center,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/combat/end/win/chest/summon

# system
function pc:sys/combat/tpter/summon with storage pc:game combat.coord
function pc:sys/combat/clear