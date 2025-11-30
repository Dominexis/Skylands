
# effect
execute if data entity @s data.effect.strength run function pc:passive/on_hit/strength/use
execute if data entity @s data.effect.oneuse_strength run function pc:passive/on_hit/oneuse_strength/use

execute if data entity @s data.effect.critical_hit run function pc:passive/on_hit/critical_hit/use
execute if data entity @s data.effect.glass_cannon run function pc:passive/on_hit/glass_cannon/use
execute if data entity @s data.effect.weakness run function pc:passive/on_hit/weakness/use

execute if data storage pc:temp passive.math run function pc:sys/object/passive/math/use