
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.effect",font:"pc:intent"}]

data modify storage pc:temp intent set value {text:[{translate:"pc.intent.effect",font:"pc:intent"}]}
execute at @n[type=!minecraft:player,distance=..100,predicate=pc:object/mob,nbt={data:{id:"ender_dragon"}}] run function pc:sys/grid/select/mob