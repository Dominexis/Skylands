
# Damage
function pc:sys/grid/select/ally

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/object/damage/atker

# Motion
execute positioned ~-1.5 ~-100 ~-1.5 as @e[predicate=pc:object/all_neutral,type=!player,dx=2,dy=200,dz=2] unless data entity @s {data:{id:"ender_dragon"}} run scoreboard players set @s pc.object.is_victim 1

    # Object
execute as @e[predicate=pc:object/victim,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] positioned as @s run function pc:object/ender_dragon/walk1/victim

    # Real Player
execute positioned ~-1.5 ~-100 ~-1.5 as @a[predicate=pc:player/ingame,predicate=sl:player,dx=2,dy=200,dz=2] positioned as @s run function pc:object/ender_dragon/walk1/victim2

function pc:sys/grid/select/clear
kill @s