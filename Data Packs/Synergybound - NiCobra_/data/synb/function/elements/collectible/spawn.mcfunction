# /!\ Uncompiled
# As/At : [depends]
# Args :
#   - item_col_id (macro)
#   - pool_name (macro)
##

$function synb:itemengine/executor/get_icon {icon_item_id:"$(item_col_id)"}
$summon minecraft:item_display ~ ~1.2 ~ {collectible_item:"$(item_col_id)",Tags:["synb.type.collectible","synb.tmp.new"],billboard:"vertical",transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
data modify entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.tmp.new,limit=1] item set from block 3328 50 -2304 Items[0]
$tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.tmp.new,limit=1] add synb.attr.source_$(pool_name)
execute if score #independant_mode synb.Tmp.Arg matches 1 run tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.tmp.new] add synb.attr.independant
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.tmp.new] remove synb.tmp.new