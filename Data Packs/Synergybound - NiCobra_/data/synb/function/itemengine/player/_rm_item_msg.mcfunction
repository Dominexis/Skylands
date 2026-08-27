# As/At : player
# Args :
#   - item_label (macro)
#   - item_lore (macro)
##

tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,tag=synb.ctx.local] add synb.tmp.listener
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.dead_player,tag=synb.ctx.local] add synb.tmp.listener
# SPECTATOR SPECIAL INCLUSION
tag @a[gamemode=spectator,distance=..20] add synb.tmp.listener
$tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,tag=synb.tmp.listener] [{"text":"[Arena] ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" LOST ","color":"white"},$(item_label),{"text":" [?]","color":"#666666","hover_event":{"action":"show_text","value":$(text_array)}}]
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500] remove synb.tmp.listener