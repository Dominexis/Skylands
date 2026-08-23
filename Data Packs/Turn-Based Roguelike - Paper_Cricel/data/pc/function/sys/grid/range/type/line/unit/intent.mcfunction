## (storage) pc:temp range

# if (same team) :
execute if entity @s[predicate=pc:sys/entity/ally] if entity @e[predicate=pc:sys/entity/ally,dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] run return 1
execute if entity @s[predicate=pc:sys/entity/enemy] if entity @e[predicate=pc:sys/entity/enemy,dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] run return 1

# else (different team) :
data modify storage pc:temp intent.avail.potential set value 1b
return 1