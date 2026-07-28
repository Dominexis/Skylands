
function sys:utils/local_thread/atker/save {id:"effect.tnt_tank"}

execute store result score #damage pc.main run data get entity @s data.effects[{id:'tnt_tank'}].value
execute as @e[predicate=sys:entity/any] if function sys:grid/range/type/any-cross run scoreboard players set @s pc.entity.victim 1
function sys:entity/dmg/atker

function sys:utils/local_thread/atker/load {id:"effect.tnt_tank"}

# fx
function sys:fx/text/use {text:{nbt:"sys.fx.explosion",storage:"pc:lang",interpret:1b}}
particle minecraft:lava ~ ~ ~ 10 0 0.5 0 100 force
particle minecraft:lava ~ ~ ~ 0.5 0 10 0 100 force

playsound sys:dr_explosion master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:block.lava.pop master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.creeper.death master @a ~ ~1024 ~ 0 1 1