
# effect
execute summon minecraft:marker run function pc:sys/utils/loot_table/loop.type
execute as @n[type=minecraft:marker,distance=..0.01,tag=pc.temp,sort=random] run function pc:sys/utils/loot_table/loop.pick

data remove storage pc:temp loot
kill @e[type=minecraft:marker,distance=..0.01,tag=pc.temp]