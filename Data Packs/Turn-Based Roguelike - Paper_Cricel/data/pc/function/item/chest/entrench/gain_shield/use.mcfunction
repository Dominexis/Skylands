
data modify entity @s data.hotbar.chest.combat.times set value 0
function pc:sys/utils/local_thread/atker/save {id:"chest.entrench"}

scoreboard players set #damage pc.main 6
execute as @e[predicate=pc:sys/entity/enemy,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:item/chest/entrench/gain_shield/victim
function pc:sys/entity/dmg/atker

function pc:sys/utils/local_thread/atker/load {id:"chest.entrench"}

# fx
playsound minecraft:block.stem.break master @a ~ ~1024 ~ 0 0 1
playsound pc:sys/squeak master @a ~ ~1024 ~ 0 1 0.25
playsound minecraft:block.anvil.land master @a ~ ~1024 ~ 0 0 0.25