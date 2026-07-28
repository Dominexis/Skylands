
execute as @e[tag=pc.grid.atker,type=minecraft:marker,limit=1] at @s run function item:skill/warrior/hemorrhage/2
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.player.attack.sweep master @a ~ ~1024 ~ 0 1.25 1
playsound sys:blood_hit master @a ~ ~1024 ~ 0 1.5 0.5