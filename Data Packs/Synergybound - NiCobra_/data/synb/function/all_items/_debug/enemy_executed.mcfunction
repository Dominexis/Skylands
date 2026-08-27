# As : player
# Args :
#   - generic_player_src (tag ctx)
#   - enemy_killed_detector (tag ctx)
##

tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[DEBUG Item] ","color":"gray"},{"selector":"@s"},{"text":" executed an enemy with detector : "},{"selector":"@e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.ctx.enemy_killed_detector,limit=1]"}]