
# effect
tag @s add pc.temp
tag @n[type=item_display,nbt={data:{id:'ender_dragon'}},distance=..100] add pc.temp2
tag @n[predicate=pc:object/ally,type=!player,distance=..100] add pc.temp2
execute as @n[type=!player,tag=pc.temp2,distance=..100] if entity @s[predicate=pc:object/ally,type=!player] run data modify entity @e[type=end_crystal,tag=pc.temp,limit=1,distance=..100] data.intent.type set value ['debuff1','attack1']
execute as @n[type=!player,tag=pc.temp2,distance=..100] if entity @s[predicate=pc:object/mob,type=!player,type=!player] run data modify entity @e[type=end_crystal,tag=pc.temp,limit=1,distance=..100] data.intent.type set value ['buff1','buff2']
tag @e[type=!player,tag=pc.temp2,limit=2,distance=..100] remove pc.temp2
tag @s remove pc.temp