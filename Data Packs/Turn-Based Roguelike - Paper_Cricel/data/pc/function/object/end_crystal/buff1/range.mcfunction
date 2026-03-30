
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.effect",font:"pc:intent"}]

data modify storage pc:temp intent set value {text:[{"translate":"pc.intent.effect",font:"pc:intent"}]}
execute at @n[predicate=pc:object/mob,type=!player,nbt={data:{id:'ender_dragon'}},distance=..100] run function pc:sys/grid/select/mob