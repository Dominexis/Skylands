
function sys:fx/main
function sys:lobby/main

execute as @a[predicate=sys:player/inplot,predicate=sl:player] at @s run function sys:player/main
execute if score $start pc.game matches 1 run function sys:ingame
execute as @e[predicate=sys:entity/item,type=minecraft:item] at @s run function sys:item/main