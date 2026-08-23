
scoreboard players set #value pc.main -1
function pc:sys/utils/math/calculate {id:"entity @s data.repair.round"}
execute if score #var pc.main matches ..0 run function pc:entity/repair/curious/1/2

function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.villager.work_toolsmith master @a ~ ~1024 ~ 0 0.5 1
playsound minecraft:entity.goat.screaming.prepare_ram master @a ~ ~1024 ~ 0 2 1
playsound minecraft:entity.goat.screaming.prepare_ram master @a ~ ~1024 ~ 0 2 1
playsound minecraft:item.trident.return master @a ~ ~1024 ~ 0 2 1

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