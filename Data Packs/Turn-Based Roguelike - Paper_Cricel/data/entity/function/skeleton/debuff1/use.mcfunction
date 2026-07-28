
execute as @e[tag=pc.intent.now,type=marker] at @s run function entity:skeleton/debuff1/2
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.skeleton.converted_to_stray master @a ~ ~1024 ~ 0 0 1
playsound minecraft:item.trident.return master @a ~ ~1024 ~ 0 0.75 1