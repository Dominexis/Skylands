
execute as @e[tag=pc.grid.atker,type=minecraft:marker,limit=1] at @s run function item:skill/warrior/training_sword/2
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.player.attack.sweep master @a ~ ~1024 ~ 0 1.25 1