
data remove storage pc:temp info

# grid effect
data modify storage pc:temp info.effect set from entity @s data.effect
function pc:passive/effect/info
data remove storage pc:temp info.effect

# victim effect
execute positioned ~-1.5 ~-100 ~-1.5 run data modify storage pc:temp info.effect set from entity @e[type=!minecraft:player,dx=2,dy=200,dz=2,limit=1,predicate=pc:object/all_neutral] data.effect
execute positioned ~-1.5 ~-100 ~-1.5 as @e[type=!minecraft:player,dx=2,dy=200,dz=2,limit=1,predicate=pc:object/all_neutral] at @s run function pc:passive/effect/info
data remove storage pc:temp info.effect

# modify
data modify entity @e[type=minecraft:text_display,distance=..100,tag=pc.grid.effect_info,limit=1] text set value [{storage:"pc:temp",nbt:"info.display[]",separator:"\n",interpret:1b,source:"storage",type:"nbt"}]

data remove storage pc:temp info