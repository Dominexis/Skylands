
# effect
execute if data storage pc:temp damage.display run return fail
execute store result score #level pc.main run data get entity @s data.effect.dragon_scale 10

execute store success score #mode pc.main if score #level pc.main >= #damage pc.main
execute if score #mode pc.main matches 1 run function pc:passive/on_hurt/dragon_scale/within_damage
execute if score #mode pc.main matches 0 run function pc:passive/on_hurt/dragon_scale/over_damage

execute store result entity @s data.effect.dragon_scale int 1 run scoreboard players operation #level pc.main /= #10 sl.value