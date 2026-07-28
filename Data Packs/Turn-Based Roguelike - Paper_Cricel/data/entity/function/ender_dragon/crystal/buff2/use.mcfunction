
scoreboard players set #damage pc.main 20
data modify storage pc:temp damage set value {mode:"heal"}

execute as @e[tag=pc.entity.ender_dragon,type=bee,limit=1] at @s run function entity:ender_dragon/crystal/buff2/2
function sys:entity/dmg/atker

function sys:combat/turn/end_act

# fx
playsound minecraft:entity.allay.ambient_with_item master @a ~ ~1024 ~ 0 1.25 1
playsound minecraft:block.respawn_anchor.charge master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.witch.drink master @a ~ ~1024 ~ 0 1.25 1