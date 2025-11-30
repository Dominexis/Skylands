
# effect
tag @n[type=minecraft:marker,distance=..100,tag=pc.walk.now] remove pc.walk.now
tag @s add pc.walk.now
tag @s remove pc.walk.intent

function pc:sys/object/walk/object/is_occupy