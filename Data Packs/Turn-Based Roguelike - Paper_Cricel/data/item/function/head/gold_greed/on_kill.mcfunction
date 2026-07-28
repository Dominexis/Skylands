
execute if data entity @e[predicate=sys:entity/victim,scores={pc.hp=..0},limit=1] data.effects[{id:'minion'}] run return fail

scoreboard players add $money pc.game 3

# fx
execute at @e[predicate=sys:entity/victim,scores={pc.hp=..0},limit=1] run function item:head/gold_greed/fx/use