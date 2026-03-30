
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {damage:10,text:[{translate:"pc.intent.attack",font:"pc:intent"}]}
execute at @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid] run function pc:sys/grid/select/any