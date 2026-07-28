
execute as @e[tag=pc.intent.now,type=marker] at @s run function entity:iron_golem/attack1/2
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.iron_golem.attack master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.player.breath master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:item.mace.smash_air master @a ~ ~1024 ~ 0 0 1