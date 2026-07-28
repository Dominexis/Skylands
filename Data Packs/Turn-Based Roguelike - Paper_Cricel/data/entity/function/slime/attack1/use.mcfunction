
execute as @e[tag=pc.intent.now,tag=!pc.intent.potential,type=marker] at @s run function entity:slime/attack1/2
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.slime.attack master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.slime.attack master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.slime.attack master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.evoker_fangs.attack master @a ~ ~1024 ~ 0 2 1