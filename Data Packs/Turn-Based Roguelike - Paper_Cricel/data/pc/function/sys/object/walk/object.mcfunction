# 把所有 data.is_walk 的 grid 都走過一遍，但如果沒有 unhindered 路徑又被霸占就 interrupt

# effect
tag @e[type=minecraft:marker,distance=..100,tag=pc.intent.now,nbt={data:{is_walk:1b}}] add pc.walk.intent
execute as @n[type=minecraft:marker,distance=..100,tag=pc.walk.intent] at @s run function pc:sys/object/walk/object/loop