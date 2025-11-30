
execute if entity @e[type=minecraft:item_display,distance=..1,tag=pc.mob.ender_dragon,limit=1] run return fail
execute if score #range pc.main matches 200.. run return fail

scoreboard players add #range pc.main 1

scoreboard players operation #temp pc.main = #range pc.main
scoreboard players operation #temp pc.main %= #15 sl.value
execute if score #temp pc.main matches 0 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^0.0 ^1.0 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 1 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^0.407 ^0.914 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 2 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^0.743 ^0.669 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 3 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^0.951 ^0.309 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 4 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^0.995 ^-0.105 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 5 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^0.866 ^-0.5 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 6 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^0.588 ^-0.809 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 7 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^0.208 ^-0.978 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 8 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^-0.208 ^-0.978 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 9 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^-0.588 ^-0.809 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 10 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^-0.866 ^-0.5 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 11 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^-0.995 ^-0.105 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 12 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^-0.951 ^0.309 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 13 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^-0.743 ^0.669 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 14 run particle minecraft:item{item:{id:"minecraft:white_concrete"}} ^-0.407 ^0.914 ^ 0 0 0 0 0 force
particle minecraft:dust{color:[1,1,1],scale:1.0f} ^ ^ ^ 0 0 0 0 0 force

execute positioned ^ ^ ^0.25 run function pc:object/ender_dragon/interphase/revive/loop