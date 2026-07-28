
scoreboard players set #value pc.main -1
function sys:utils/math/calculate {id:"entity @s data.repair.round"}
execute if score #var pc.main matches ..0 run function entity:repair/basic/1/2

function sys:combat/turn/end_act

# fx
playsound minecraft:entity.villager.work_toolsmith master @a ~ ~1024 ~ 0 0.5 0.5

particle minecraft:lava ~ ~ ~ 0.2 0.2 0.2 0 10 force
particle minecraft:soul_fire_flame ~ ~ ~ 1.0 0 0.0 0.1 0 force
particle minecraft:soul_fire_flame ~ ~ ~ 0.866 0 0.5 0.1 0 force
particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0 0.866 0.1 0 force
particle minecraft:soul_fire_flame ~ ~ ~ 0.0 0 1.0 0.1 0 force
particle minecraft:soul_fire_flame ~ ~ ~ -0.5 0 0.866 0.1 0 force
particle minecraft:soul_fire_flame ~ ~ ~ -0.866 0 0.5 0.1 0 force
particle minecraft:soul_fire_flame ~ ~ ~ -1.0 0 0.0 0.1 0 force
particle minecraft:soul_fire_flame ~ ~ ~ -0.866 0 -0.5 0.1 0 force
particle minecraft:soul_fire_flame ~ ~ ~ -0.5 0 -0.866 0.1 0 force
particle minecraft:soul_fire_flame ~ ~ ~ -0.0 0 -1.0 0.1 0 force
particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0 -0.866 0.1 0 force
particle minecraft:soul_fire_flame ~ ~ ~ 0.866 0 -0.5 0.1 0 force