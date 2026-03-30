
# effect
execute summon marker run function pc:sys/utils/loot_table/loop.type
execute as @n[type=marker,tag=pc.temp,sort=random,distance=..0.01] run function pc:sys/utils/loot_table/loop.pick

data remove storage pc:temp loot
kill @e[type=marker,tag=pc.temp,distance=..0.01]