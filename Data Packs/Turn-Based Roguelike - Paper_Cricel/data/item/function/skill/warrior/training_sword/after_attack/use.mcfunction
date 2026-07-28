
execute as @e[predicate=sys:entity/victim] at @s run function item:skill/warrior/training_sword/after_attack/2
function item:skill/warrior/training_sword/after_attack/clear with storage pc:temp passive.current

# fx
execute at @e[tag=pc.player.selector,limit=1] positioned ~ ~1.5 ~ facing entity @e[tag=pc.grid.atker,type=marker,limit=1] feet rotated ~ 0 run function item:skill/warrior/training_sword/after_attack/fx