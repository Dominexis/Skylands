execute if score #level sanct.numbers matches 3.. run return 1
scoreboard players set #level sanct.numbers 3

# Announcement
title @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] times 10 70 20
title @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] subtitle "Spells using §4Blood§r added to §3Spellbook"
title @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] title "§bNew Spells Available!"
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] at @s run playsound minecraft:entity.evoker.prepare_summon master @s ~ ~ ~ 1 2 1

# Glowing book
clear @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,predicate=!sanct:inventory/book/holding_open,predicate=!sanct:inventory/book/missing,scores={sanct.thrown_book_time=0}] minecraft:book[minecraft:custom_data~{spellbook:1b}]
loot give @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,predicate=sanct:inventory/book/missing,scores={sanct.thrown_book_time=0}] loot sanct:book_new_spells

# End tutorial
execute if block -2318 83 2319 minecraft:iron_door[open=false] run function sanct:inventory/acquire_material/exit_tutorial