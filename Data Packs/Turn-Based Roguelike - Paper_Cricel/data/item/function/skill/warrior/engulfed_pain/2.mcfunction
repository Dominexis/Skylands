
data modify storage pc:temp range set value {type:"3x3",target:"enemy",mode:"victim"}
function sys:grid/range/use

execute as @e[predicate=sys:entity/victim] at @s run function item:skill/warrior/engulfed_pain/3

function sys:grid/range/clear

# fx
particle instant_effect{color:[0.208, 0.149, 0.251]} ~ ~0.5 ~ 3 0.1 3 0.1 30 force
particle minecraft:squid_ink ~ ~0.5 ~ 3 0 3 0.1 90 force

playsound minecraft:entity.shulker.death master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.blaze.death master @a ~ ~1024 ~ 0 0 0.5
playsound minecraft:entity.squid.squirt master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.warden.listening master @a ~ ~1024 ~ 0 1.5 1

execute rotated ~ 0 positioned ^ ^ ^4 rotated ~-90 0 run function item:skill/warrior/engulfed_pain/fx/use
execute rotated ~90 0 positioned ^ ^ ^4 rotated ~-90 0 run function item:skill/warrior/engulfed_pain/fx/use
execute rotated ~180 0 positioned ^ ^ ^4 rotated ~-90 0 run function item:skill/warrior/engulfed_pain/fx/use
execute rotated ~270 0 positioned ^ ^ ^4 rotated ~-90 0 run function item:skill/warrior/engulfed_pain/fx/use