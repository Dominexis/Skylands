
scoreboard players set #damage pc.main 20
data modify storage pc:temp damage set value {mode:"heal"}

execute as @e[tag=pc.entity.ender_dragon,type=bee,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/crystal/buff2/2
function pc:sys/entity/dmg/atker

function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.allay.ambient_with_item master @a ~ ~1024 ~ 0 1.25 1
playsound minecraft:block.respawn_anchor.charge master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.witch.drink master @a ~ ~1024 ~ 0 1.25 1