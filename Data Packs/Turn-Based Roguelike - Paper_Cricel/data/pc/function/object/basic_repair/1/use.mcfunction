
# effect
scoreboard players set #value pc.main -1
function pc:sys/utils/math/calculate {id:"entity @s data.in_combat.repair"}
execute if score #var pc.main matches ..0 run function pc:object/basic_repair/1/2

# fx
playsound minecraft:entity.villager.work_toolsmith master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.5

particle minecraft:lava ~ ~ ~ 0.2 0.2 0.2 0 10 force
particle soul_fire_flame ~ ~ ~ 1.0 0 0.0 0.1 0 force
particle soul_fire_flame ~ ~ ~ 0.866 0 0.5 0.1 0 force
particle soul_fire_flame ~ ~ ~ 0.5 0 0.866 0.1 0 force
particle soul_fire_flame ~ ~ ~ 0.0 0 1.0 0.1 0 force
particle soul_fire_flame ~ ~ ~ -0.5 0 0.866 0.1 0 force
particle soul_fire_flame ~ ~ ~ -0.866 0 0.5 0.1 0 force
particle soul_fire_flame ~ ~ ~ -1.0 0 0.0 0.1 0 force
particle soul_fire_flame ~ ~ ~ -0.866 0 -0.5 0.1 0 force
particle soul_fire_flame ~ ~ ~ -0.5 0 -0.866 0.1 0 force
particle soul_fire_flame ~ ~ ~ -0.0 0 -1.0 0.1 0 force
particle soul_fire_flame ~ ~ ~ 0.5 0 -0.866 0.1 0 force
particle soul_fire_flame ~ ~ ~ 0.866 0 -0.5 0.1 0 force
