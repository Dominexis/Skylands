
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.effect",font:"pc:intent"}]
execute facing entity @n[predicate=pc:object/ally,type=!player,distance=..100] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {text:[{"translate":"pc.intent.effect",font:"pc:intent"}]}
function pc:sys/grid/select/any

data modify storage pc:temp intent set value {text:[{"translate":"pc.intent.effect",font:"pc:intent"}]}
execute at @e[predicate=pc:object/neutral,type=!player,tag=pc.fx.undying_shell,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/select/any