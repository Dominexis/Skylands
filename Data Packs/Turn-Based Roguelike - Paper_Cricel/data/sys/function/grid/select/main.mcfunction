
# if (sneaking) :
execute if predicate sys:flags/is_sneak run function sys:grid/select/mob/lookat/main
execute if entity @e[tag=pc.select.object,predicate=sys:entity/any_real,limit=1] run return run function sys:grid/select/mob/main

# else :
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{pc:{}},!custom_data~{pc:{category:'end_turn'}}] run function sys:grid/select/player/range/main

scoreboard players set #range pc.main 0
execute anchored eyes positioned ^ ^ ^ run function sys:grid/select/player/lookat/2
execute anchored eyes run tp 20060423-0-0-1-0 ^ ^ ^

execute unless items entity @s weapon.mainhand *[custom_data~{pc:{}},!custom_data~{pc:{category:'end_turn'}}] if entity @e[tag=pc.select,tag=!pc.select.clear,type=minecraft:item_display,limit=1] run function sys:grid/select/player/range/clear