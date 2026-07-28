
execute as @e[tag=pc.intent.now,type=marker] at @s run function entity:zombie_agile/attack1/2
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:entity.player.attack.sweep master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:item.trident.riptide_3 master @a ~ ~1024 ~ 0 2 0.5