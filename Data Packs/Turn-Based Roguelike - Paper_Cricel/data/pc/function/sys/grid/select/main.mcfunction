
# if (sneaking) :
execute if predicate pc:sys/flags/is_sneak run function pc:sys/grid/select/mob/lookat/main
execute if entity @e[tag=pc.select.object,predicate=pc:sys/entity/any_real,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run return run function pc:sys/grid/select/mob/main

# else :
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{pc:{}},!custom_data~{pc:{category:'end_turn'}}] run function pc:sys/grid/select/player/range/main

scoreboard players set #range pc.main 0
execute anchored eyes positioned ^ ^ ^ run function pc:sys/grid/select/player/lookat/2
execute anchored eyes run tp 20060423-0-0-1-0 ^ ^ ^

execute unless items entity @s weapon.mainhand *[custom_data~{pc:{}},!custom_data~{pc:{category:'end_turn'}}] if entity @e[tag=pc.select,tag=!pc.select.clear,type=minecraft:item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/select/player/range/clear