# /!\ Uncompiled
# At : [depends]
# Args :
#   - amount (macro)
##

$summon minecraft:item ~ ~0.5 ~ {Tags:["synb.tmp.new"],Item:{id:"minecraft:prismarine_crystals",count:$(amount)}}
data modify entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.tmp.new,limit=1] Item.components set from storage synb.d:values money_item_components
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.tmp.new] remove synb.tmp.new