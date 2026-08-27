
scoreboard players set #value pc.main -1
function pc:sys/utils/math/calculate {id:"entity @s data.repair.round"}

scoreboard players set #value pc.main 2
function pc:sys/entity/repair/complete

execute if score #var pc.main matches ..0 run function pc:sys/utils/passive/use {passive:on_death}
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.villager.work_toolsmith master @a ~ ~1024 ~ 0 0.5 0.5
execute positioned ~ ~0.25 ~ run function pc:entity/repair/wireless/fx/use

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