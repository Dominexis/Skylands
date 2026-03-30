
# effect
tag @s add pc.temp
tag @n[type=minecraft:item_display,distance=..100,nbt={data:{id:"ender_dragon"}}] add pc.temp2
tag @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] add pc.temp2
execute as @n[type=!minecraft:player,distance=..100,tag=pc.temp2] if entity @s[type=!minecraft:player,predicate=pc:object/ally] run data modify entity @e[type=minecraft:end_crystal,distance=..100,tag=pc.temp,limit=1] data.intent.type set value ["debuff1","attack1"]
execute as @n[type=!minecraft:player,distance=..100,tag=pc.temp2] if entity @s[type=!minecraft:player,type=!minecraft:player,predicate=pc:object/mob] run data modify entity @e[type=minecraft:end_crystal,distance=..100,tag=pc.temp,limit=1] data.intent.type set value ["buff1","buff2"]
tag @e[type=!minecraft:player,distance=..100,tag=pc.temp2,limit=2] remove pc.temp2
tag @s remove pc.temp