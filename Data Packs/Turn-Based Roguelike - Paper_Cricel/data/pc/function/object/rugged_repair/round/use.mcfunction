
# effect
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.in_combat.rugged"}

execute if score #var pc.main matches 1 run scoreboard players set #value pc.main 2
execute unless score #var pc.main matches 1 run scoreboard players set #value pc.main 1

function pc:passive/effect/apply {effect:"robust"}
function pc:passive/effect/apply {effect:"regeneration"}