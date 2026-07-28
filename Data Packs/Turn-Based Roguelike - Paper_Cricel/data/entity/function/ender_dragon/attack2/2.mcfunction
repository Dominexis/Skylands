
execute as @e[tag=pc.intent.now,type=marker] at @s run function entity:ender_dragon/attack2/2b

data modify storage pc:temp damage set value {operand:"self"}
function sys:entity/dmg/atker
execute as @e[predicate=sys:entity/victim] positioned as @s run function sys:entity/repel/use

function sys:grid/range/clear

function sys:combat/turn/end_act
rotate @s ~ 0

# fx
execute on passengers if entity @s[tag=pc.entity.ender_dragon.skin,type=item_display] run function entity:ender_dragon/fx/attack2/use
playsound minecraft:entity.ender_dragon.growl master @a ~ ~1024 ~ 0 1.75 0.5
playsound minecraft:entity.blaze.shoot master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.blaze.shoot master @a ~ ~1024 ~ 0 0.75 1

particle minecraft:large_smoke ~ ~ ~ 1.0 0 0.0 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.972 0 0.048 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.944 0 0.096 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.917 0 0.144 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.889 0 0.192 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.861 0 0.241 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.833 0 0.289 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.806 0 0.337 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.778 0 0.385 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.75 0 0.433 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.722 0 0.481 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.694 0 0.529 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.667 0 0.577 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.639 0 0.625 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.611 0 0.674 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.583 0 0.722 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.556 0 0.77 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.528 0 0.818 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.5 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.444 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.389 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.333 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.278 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.222 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.167 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.111 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.056 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.0 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.056 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.111 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.167 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.222 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.278 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.333 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.389 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.444 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.5 0 0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.528 0 0.818 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.556 0 0.77 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.583 0 0.722 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.611 0 0.674 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.639 0 0.625 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.667 0 0.577 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.694 0 0.529 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.722 0 0.481 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.75 0 0.433 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.778 0 0.385 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.806 0 0.337 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.833 0 0.289 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.861 0 0.241 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.889 0 0.192 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.917 0 0.144 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.944 0 0.096 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.972 0 0.048 1 0 force
particle minecraft:large_smoke ~ ~ ~ -1.0 0 0.0 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.972 0 -0.048 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.944 0 -0.096 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.917 0 -0.144 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.889 0 -0.192 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.861 0 -0.241 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.833 0 -0.289 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.806 0 -0.337 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.778 0 -0.385 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.75 0 -0.433 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.722 0 -0.481 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.694 0 -0.529 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.667 0 -0.577 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.639 0 -0.625 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.611 0 -0.674 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.583 0 -0.722 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.556 0 -0.77 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.528 0 -0.818 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.5 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.444 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.389 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.333 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.278 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.222 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.167 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.111 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.056 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ -0.0 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.056 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.111 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.167 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.222 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.278 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.333 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.389 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.444 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.5 0 -0.866 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.528 0 -0.818 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.556 0 -0.77 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.583 0 -0.722 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.611 0 -0.674 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.639 0 -0.625 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.667 0 -0.577 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.694 0 -0.529 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.722 0 -0.481 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.75 0 -0.433 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.778 0 -0.385 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.806 0 -0.337 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.833 0 -0.289 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.861 0 -0.241 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.889 0 -0.192 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.917 0 -0.144 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.944 0 -0.096 1 0 force
particle minecraft:large_smoke ~ ~ ~ 0.972 0 -0.048 1 0 force