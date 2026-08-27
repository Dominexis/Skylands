
execute store result score #level pc.main run data get storage pc:temp passive.current.value

execute store success score #mode pc.main if score #level pc.main >= #damage pc.main
execute if score #mode pc.main matches 1 run function pc:effect/dragon_scale/lose_hp/within_damage
execute if score #mode pc.main matches 0 run function pc:effect/dragon_scale/lose_hp/over_damage

execute store result storage pc:temp passive.current.value int 1 run scoreboard players get #level pc.main