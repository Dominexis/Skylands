
execute as @e[predicate=sys:entity/ally] if function sys:grid/range/type/5x5 at @s run function entity:enderman/debuff1/3
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.guardian.death master @a ~ ~1024 ~ 0 1.25 1
playsound minecraft:entity.fox.bite master @a ~ ~1024 ~ 0 0.5 1
playsound minecraft:entity.shulker.ambient master @a ~ ~1024 ~ 0 1.5 0.25
particle minecraft:ash ~ ~2 ~ 5 1 5 10 100 force