
scoreboard players remove #skill.warrior.momentum.repeat pc.main 1

execute as @e[tag=pc.grid.atker,type=marker,limit=1] at @s run function item:skill/warrior/momentum/2
execute as @e[tag=pc.player.selector,predicate=sys:entity/any,limit=1] at @s positioned ~ ~1 ~ facing entity @e[tag=pc.grid.atker,type=marker,limit=1] eyes rotated ~ 0 run function item:skill/warrior/momentum/fx/use

execute if score #skill.warrior.momentum.repeat pc.main matches 0.. run return run function sys:entity/schedule/use {func:"function item:skill/warrior/momentum/use",delay:3}
function sys:combat/turn/end_act