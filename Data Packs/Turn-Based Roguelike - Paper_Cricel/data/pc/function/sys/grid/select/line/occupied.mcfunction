# 懶得優化了 @_@

# Potential Tip
execute if score #line.potential_intent pc.main matches 1 run return run data modify storage pc:temp line.state.potential_intent set value true

# Real Occuiped
execute unless entity @n[type=minecraft:marker,dx=2,dy=200,dz=2,predicate=pc:grid/occupy] run return fail
execute unless predicate pc:object/mob run data modify storage pc:temp line.state.next set value false
execute if predicate pc:object/mob run scoreboard players set #line.potential_intent pc.main 1