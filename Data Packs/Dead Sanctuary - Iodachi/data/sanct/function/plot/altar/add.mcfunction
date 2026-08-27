advancement revoke @s only sanct:altar/add

function sanct:spell/alchemy/rune/update_effects

execute as @e[x=-2319,y=62,z=2318,dx=1,dz=1,type=minecraft:glow_item_frame,predicate=sanct:item/altar/has_item,tag=!sanct.has_item] at @s run summon minecraft:interaction ~ ~-0.03125 ~ {width:0.8,height:0.1,response:1b,Tags:["sanct.altar"]}
team join sanct.rune_altar @e[x=-2319,y=62,z=2318,dx=1,dz=1,type=minecraft:interaction,tag=sanct.altar,team=]

tag @e[x=-2319,y=62,z=2318,dx=1,dz=1,type=minecraft:glow_item_frame,predicate=sanct:item/altar/has_item,tag=!sanct.has_item] add sanct.has_item