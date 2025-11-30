
# effect
execute if data storage pc:temp damage.bypass.effect run return fail
execute store result score #damage.extra pc.main run data get entity @s data.effect.oneuse_strength 10
scoreboard players operation #damage pc.main += #damage.extra pc.main

execute if data storage pc:temp damage.display run return fail
tag @s add pc.passive.on_hit.oneuse_strength