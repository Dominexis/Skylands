
data remove storage pc:temp info

# grid effect
data modify storage pc:temp info.effect set from entity @s data.effect
function pc:passive/effect/info
data remove storage pc:temp info.effect

# victim effect
execute positioned ~-1.5 ~-100 ~-1.5 run data modify storage pc:temp info.effect set from entity @e[predicate=pc:object/all_neutral,type=!player,dx=2,dy=200,dz=2,limit=1] data.effect
execute positioned ~-1.5 ~-100 ~-1.5 as @e[predicate=pc:object/all_neutral,type=!player,dx=2,dy=200,dz=2,limit=1] at @s run function pc:passive/effect/info
data remove storage pc:temp info.effect

# modify
data modify entity @e[type=text_display,tag=pc.grid.effect_info,distance=..100,limit=1] text set value [{storage:"pc:temp",nbt:"info.display[]",separator:"\n",interpret:true}]

data remove storage pc:temp info