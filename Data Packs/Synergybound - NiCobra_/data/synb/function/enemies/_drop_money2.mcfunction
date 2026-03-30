# As/At : death_detector
# Args :
#   - money_worth (macro)
#   - random_motion_x (macro)
#   - random_motion_z (macro)
##

$summon minecraft:item ~ ~-0.7 ~ {Motion:[$(random_motion_x),0.3,$(random_motion_z)],Tags:["synb.tmp.new"],PickupDelay:22s,Item:{id:"minecraft:prismarine_crystals",count:$(money_worth)}}
data modify entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.tmp.new,limit=1] Item.components set from storage synb.d:values money_item_components
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.tmp.new] remove synb.tmp.new