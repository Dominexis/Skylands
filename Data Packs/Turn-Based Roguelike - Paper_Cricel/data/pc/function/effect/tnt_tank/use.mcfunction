
function pc:sys/utils/local_thread/atker/save {id:"effect.tnt_tank"}

execute store result score #damage pc.main run data get entity @s data.effects[{id:'tnt_tank'}].value
execute as @e[predicate=pc:sys/entity/any,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] if function pc:sys/grid/range/type/any-cross run scoreboard players set @s pc.entity.victim 1
function pc:sys/entity/dmg/atker

function pc:sys/utils/local_thread/atker/load {id:"effect.tnt_tank"}

# fx
function pc:sys/fx/text/use {text:{nbt:"sys.fx.explosion",storage:"pc:lang",interpret:1b}}
particle minecraft:lava ~ ~ ~ 10 0 0.5 0 100 force
particle minecraft:lava ~ ~ ~ 0.5 0 10 0 100 force

playsound pc:sys/dr_explosion master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:block.lava.pop master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.creeper.death master @a ~ ~1024 ~ 0 1 1