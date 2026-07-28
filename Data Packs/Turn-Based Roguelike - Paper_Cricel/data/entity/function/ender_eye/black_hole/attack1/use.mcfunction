
execute as @e[tag=pc.intent.now,type=marker] at @s run function entity:ender_eye/black_hole/attack1/2
function sys:utils/passive/use {passive:"on_death"}
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.wither.shoot master @a ~ ~1024 ~ 0 1 0.25