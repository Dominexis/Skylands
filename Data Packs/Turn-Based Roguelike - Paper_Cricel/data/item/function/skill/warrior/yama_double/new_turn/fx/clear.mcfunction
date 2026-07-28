
execute as @e[predicate=sys:owner/entity,predicate=sys:entity/any_real,limit=1] at @s run function sys:utils/passive/use {passive:'on_death'}
kill @s