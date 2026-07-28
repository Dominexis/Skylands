
execute as @e[tag=pc.intent.now,type=marker] at @s run function entity:piglin_heal/buff2/2
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.witch.drink master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:entity.allay.ambient_with_item master @a ~ ~1024 ~ 0 1 0.5
execute anchored eyes run particle minecraft:entity_effect{color:[0.914, 0.298, 0.424, 1]} ^1.25 ^-0.25 ^ 0 0 0 0.1 20 force
execute anchored eyes run particle minecraft:entity_effect{color:[0.914, 0.298, 0.424, 1]} ^-1.25 ^-0.25 ^ 0 0 0 0.1 20 force