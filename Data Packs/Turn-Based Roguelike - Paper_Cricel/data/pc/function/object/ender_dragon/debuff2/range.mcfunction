
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.effect",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {text:[{translate:"pc.intent.effect",font:"pc:intent"}],id:["release1"]}
execute positioned ~8 ~ ~ run function pc:sys/grid/select/any
execute positioned ~-8 ~ ~ run function pc:sys/grid/select/any
execute positioned ~ ~ ~8 run function pc:sys/grid/select/any
execute positioned ~ ~ ~-8 run function pc:sys/grid/select/any

data modify storage pc:temp intent set value {text:[{translate:"pc.intent.effect",font:"pc:intent"}],id:["release2"]}
execute positioned ~8 ~ ~4 run function pc:sys/grid/select/any
execute positioned ~8 ~ ~-4 run function pc:sys/grid/select/any
execute positioned ~-8 ~ ~4 run function pc:sys/grid/select/any
execute positioned ~-8 ~ ~-4 run function pc:sys/grid/select/any
execute positioned ~4 ~ ~8 run function pc:sys/grid/select/any
execute positioned ~-4 ~ ~8 run function pc:sys/grid/select/any
execute positioned ~4 ~ ~-8 run function pc:sys/grid/select/any
execute positioned ~-4 ~ ~-8 run function pc:sys/grid/select/any

data modify storage pc:temp intent set value {text:[{translate:"pc.intent.effect",font:"pc:intent"}],id:["release3"]}
execute positioned ~8 ~ ~8 run function pc:sys/grid/select/any
execute positioned ~8 ~ ~-8 run function pc:sys/grid/select/any
execute positioned ~-8 ~ ~8 run function pc:sys/grid/select/any
execute positioned ~-8 ~ ~-8 run function pc:sys/grid/select/any