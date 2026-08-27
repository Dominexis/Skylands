# In arena
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.item.firework.follower,tag=synb.ctx.local] \
    if score @s synb.Item.firework.source_id = @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEPlayer.Registered at @s run function synb:all_items/firework/_follow

# Outside of arena
execute if entity @s[tag=!synb.attr.player_in_arena] as @e[type=minecraft:marker,tag=synb.item.firework.follower,tag=synb.attr.independant,distance=..40] \
    if score @s synb.Item.firework.source_id = @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEPlayer.Registered at @s run function synb:all_items/firework/_follow

execute if entity @s[tag=synb.item.firework.loaded,scores={synb.IEPlayer.CrossDelay=1,synb.IEPlayer.CurrentAmmo=1..}] run playsound minecraft:entity.villager.work_shepherd player @a ~ ~ ~ 0.7 1.5