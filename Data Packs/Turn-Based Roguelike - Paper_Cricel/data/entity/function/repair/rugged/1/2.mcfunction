
scoreboard players set #value pc.main 999
function sys:entity/repair/complete

execute as @e[predicate=sys:entity/player,predicate=sys:owner/player,limit=1] at @s run function entity:repair/rugged/1/2b

function sys:utils/passive/use {passive:on_death}