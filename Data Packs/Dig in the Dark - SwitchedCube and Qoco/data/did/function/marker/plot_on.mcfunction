## This function runs when the plot turns on



execute positioned ~98 ~7 ~-96 align xyz positioned ~0.5 ~ ~0.5 rotated 180 0 run summon minecraft:interaction ~ ~-0.05 ~ {Tags:["did.vendor.interact"],width:1.1f,height:2.1f}

execute positioned ~98 ~7 ~-96 align xyz positioned ~0.5 ~ ~0.5 rotated 180 0 run summon minecraft:item_display ~ ~ ~ {Tags:["did.vendor.funnydisplay"],fall_distance:0.0d,item:{id:"minecraft:item_frame",components:{"minecraft:item_model":"did:vendor"},count:1},item_display:"head"}
function did:setup/reset_sand3
function did:setup/reset_sand2
function did:setup/reset_sand