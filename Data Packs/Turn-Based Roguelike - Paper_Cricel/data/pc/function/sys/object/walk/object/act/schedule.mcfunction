
# effect
execute as @n[type=minecraft:marker,distance=..100,tag=pc.walk.now] at @s as @n[type=minecraft:marker,distance=..100,tag=pc.walk.intent] at @s run function pc:sys/object/walk/object/loop