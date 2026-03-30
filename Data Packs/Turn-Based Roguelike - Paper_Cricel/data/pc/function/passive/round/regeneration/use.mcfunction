
# effect
scoreboard players set #damage pc.main 10
data modify storage pc:temp damage set value {is_heal:1b}
execute if data entity @s data.effect.heal_overdose run function pc:passive/round/regeneration/heal_overdose
function pc:sys/object/damage/victim
data remove storage pc:temp damage