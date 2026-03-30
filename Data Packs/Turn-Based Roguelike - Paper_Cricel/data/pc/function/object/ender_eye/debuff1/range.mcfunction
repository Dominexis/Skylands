
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.effect",font:"pc:intent"}]

data modify storage pc:temp intent set value {text:[{translate:"pc.intent.effect",font:"pc:intent"}],facing:1b}
execute at @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/ally] run function pc:sys/grid/select/any