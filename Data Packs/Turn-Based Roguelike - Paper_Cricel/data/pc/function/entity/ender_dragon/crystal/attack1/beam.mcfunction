
execute if score #range pc.main matches 200.. run return fail
particle minecraft:witch ~ ~ ~ 0 0 0 0 0 force

scoreboard players add #range pc.main 1
scoreboard players operation #mod pc.main = #range pc.main
scoreboard players operation #mod pc.main %= #15 sl.value

execute if score #mod pc.main matches 0 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^0.0 ^1.0 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 1 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^0.407 ^0.914 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 2 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^0.743 ^0.669 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 3 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^0.951 ^0.309 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 4 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^0.995 ^-0.105 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 5 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^0.866 ^-0.5 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 6 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^0.588 ^-0.809 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 7 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^0.208 ^-0.978 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 8 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^-0.208 ^-0.978 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 9 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^-0.588 ^-0.809 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 10 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^-0.866 ^-0.5 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 11 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^-0.995 ^-0.105 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 12 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^-0.951 ^0.309 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 13 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^-0.743 ^0.669 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 14 run particle minecraft:item{item:{id:"minecraft:purple_concrete"}} ^-0.407 ^0.914 ^ 0 0 0 0 0 force

execute unless entity @e[tag=pc.atker,type=minecraft:end_crystal,distance=..0.25,limit=1] positioned ^ ^ ^0.25 run function pc:entity/ender_dragon/crystal/attack1/beam