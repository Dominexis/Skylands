
execute as @e[tag=pc.intent.now,type=marker] at @s run function entity:ender_eye/debuff1/2
function sys:combat/turn/end_act

# fx
playsound minecraft:block.respawn_anchor.charge master @a ~ ~1024 ~ 0 0.8 0.5
playsound minecraft:entity.player.breath master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:entity.guardian.death master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:block.end_portal.spawn master @a ~ ~1024 ~ 0 1.5 0.25