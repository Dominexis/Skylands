
kill @s

scoreboard players add #fx.count pc.main 1
execute if score #fx.count pc.main matches 6.. run function pc:sys/combat/turn/end_act

# fx
particle minecraft:large_smoke ~ ~ ~ 0.3 0.3 0.3 0.15 30 force
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~1024 ~ 0 2 0.5