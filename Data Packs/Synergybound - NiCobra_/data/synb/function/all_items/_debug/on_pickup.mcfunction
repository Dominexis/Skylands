# As : player
# Args :
#   - generic_player_src (tag ctx)
##

scoreboard players add @s synb.IEPlayer.CurrentAmmo 1000
function synb:itemengine/player/heal {heal_amount:30}
tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[DEBUG Item] ","color":"gray"},{"selector":"@s"},{"text":" obtained debug item."}]