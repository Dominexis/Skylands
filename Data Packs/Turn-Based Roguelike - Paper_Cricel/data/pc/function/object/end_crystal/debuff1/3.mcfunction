
# effect
execute store result score #var pc.main run data get entity @s data.effect.vulnerable
execute store success score #is_vulnerable pc.main if score #var pc.main matches 1..
scoreboard players set #value pc.main 2
execute if score #is_vulnerable pc.main matches 0 run function pc:passive/effect/apply {effect:vulnerable}
scoreboard players set #value pc.main -4
execute if score #is_vulnerable pc.main matches 1 run function pc:passive/effect/apply {effect:oneuse_strength}

# fx
function pc:fx/debuff/use
particle minecraft:smoke ~ ~0.6 ~ 0 0.2 0 0.03 100 force