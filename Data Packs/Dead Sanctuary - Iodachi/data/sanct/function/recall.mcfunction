
# Close book if opened
execute if entity @s[advancements={sanct:book/open=true}] run function sanct:book/open/close

# Simulate death if player used checkpoint trigger
execute unless score @s sanct.death matches 1.. run function sanct:player/death/checkpoint_trigger

execute if score #barrier_unlocked sanct.numbers matches 1.. run function sanct:player/death/default_title

# Clear custom effects
scoreboard players set @s[scores={sanct.spell.revenge=1..}] sanct.spell.revenge 0
advancement revoke @s[advancements={sanct:spell/swarm_damage/active_buff=true}] only sanct:spell/swarm_damage/active_buff

# Kill ender pearls
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.teleport_item] if score @s sanct.id = @a[distance=0,limit=1,team=sl.player] sl.id on vehicle run kill @s
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.teleport_item] if score @s sanct.id = @a[distance=0,limit=1,team=sl.player] sl.id run kill @s

advancement revoke @s only sanct:death_location
scoreboard players set @s sanct.death 0
scoreboard players set @s sanct.respawn_timer 1
schedule function sanct:player/death/clock 5