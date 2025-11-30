
# effect
execute if data storage pc:temp damage.bypass.effect run return fail
execute store result score #damage.extra pc.main run data get entity @s data.effect.strength 10
scoreboard players operation #damage pc.main += #damage.extra pc.main