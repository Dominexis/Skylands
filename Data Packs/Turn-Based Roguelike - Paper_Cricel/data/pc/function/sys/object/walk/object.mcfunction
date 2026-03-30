# 把所有 data.is_walk 的 grid 都走過一遍，但如果沒有 unhindered 路徑又被霸占就 interrupt

# effect
tag @e[type=marker,tag=pc.intent.now,nbt={data:{is_walk:true}},distance=..100] add pc.walk.intent
execute as @n[type=marker,tag=pc.walk.intent,distance=..100] at @s run function pc:sys/object/walk/object/loop