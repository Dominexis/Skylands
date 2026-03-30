execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.book_opened_position] if score @s sanct.id = @a[distance=0,limit=1] sl.id run kill @s
execute anchored eyes positioned ^ ^ ^ run kill @e[type=minecraft:item,predicate=sanct:item/book_open_thrown,distance=..1,limit=1]

clear @s #sanct:spellbook[minecraft:custom_data~{spellbook:1b}]
loot give @s[predicate=!sanct:inventory/holding_nothing] loot sanct:book_closed
loot replace entity @s[predicate=sanct:inventory/holding_nothing] weapon.mainhand loot sanct:book_closed

execute at @s run playsound minecraft:item.book.put player @a[distance=..16]

advancement revoke @s only sanct:book/open