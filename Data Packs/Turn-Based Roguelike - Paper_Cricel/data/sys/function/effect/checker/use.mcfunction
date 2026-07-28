## (exe) grid

execute at @s positioned ~-1.5 ~-100 ~-1.5 as @e[predicate=sys:entity/any_real,dx=2,dy=200,dz=2,limit=1] run function sys:effect/checker/entity/use
data modify storage pc:temp infocheck.effects append from entity @s data.effects[]
data remove storage pc:temp infocheck.effects[{hidden:1b}]
data modify storage pc:temp infocheck.effects append from storage pc:temp infocheck.effects[].extra[]

function sys:effect/checker/2

data remove storage pc:temp infocheck