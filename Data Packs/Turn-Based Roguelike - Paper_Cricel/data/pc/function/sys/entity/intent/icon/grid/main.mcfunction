
tag @s add pc.self
execute at @s positioned ~-1.5 ~-100 ~-1.5 as @e[predicate=pc:sys/entity/any_real,dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] at @s anchored eyes run tp @e[tag=pc.self,distance=..10,limit=1,type=!minecraft:giant] ^ ^0.75 ^
tag @s remove pc.self