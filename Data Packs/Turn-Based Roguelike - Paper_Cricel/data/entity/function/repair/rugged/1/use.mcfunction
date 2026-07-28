
scoreboard players set #value pc.main -1
function sys:utils/math/calculate {id:"entity @s data.repair.round"}
execute if score #var pc.main matches ..0 run function entity:repair/rugged/1/2

data modify storage pc:temp range set value {type:'3x3',mode:'victim',target:'ally'}
function sys:grid/range/use

execute as @e[predicate=sys:entity/victim] at @s run function entity:repair/rugged/1/3

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

playsound minecraft:item.armor.equip_diamond master @a ~ ~1024 ~ 0 0 1
playsound minecraft:block.iron_door.close master @a ~ ~1024 ~ 0 1.25 0.75
particle trial_spawner_detection_ominous ~-5.5 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.0 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.0 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-4.5 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-4.5 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-4.0 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-4.0 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-3.5 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-3.5 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-3.0 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-3.0 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-2.5 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-2.5 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-2.0 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-2.0 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-1.5 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-1.5 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-1.0 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-1.0 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-0.5 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-0.5 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~0.0 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~0.0 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~0.5 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~0.5 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~1.0 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~1.0 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~1.5 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~1.5 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~2.0 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~2.0 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~2.5 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~2.5 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~3.0 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~3.0 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~3.5 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~3.5 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~4.0 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~4.0 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~4.5 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~4.5 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.0 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.0 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~-5.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~-5.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~-5.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~-4.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~-4.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~-4.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~-4.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~-3.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~-3.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~-3.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~-3.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~-2.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~-2.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~-2.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~-2.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~-1.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~-1.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~-1.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~-1.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~-0.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~-0.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~0.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~0.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~0.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~0.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~1.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~1.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~1.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~1.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~2.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~2.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~2.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~2.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~3.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~3.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~3.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~3.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~4.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~4.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~4.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~4.5 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~-5.5 ~ ~5.0 0 0 0 0 0 force
particle trial_spawner_detection_ominous ~5.5 ~ ~5.0 0 0 0 0 0 force