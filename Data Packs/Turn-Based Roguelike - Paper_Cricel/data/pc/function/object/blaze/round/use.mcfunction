
# effect
execute if data entity @s data.effect.thorn if entity @s[tag=pc.effect.thorn.last_for_1_round] run function pc:object/blaze/round/2
execute if data entity @s data.effect.thorn run tag @s add pc.effect.thorn.last_for_1_round

# fx