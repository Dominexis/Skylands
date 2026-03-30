# As/At : sentinel (enemy)
##

summon minecraft:shulker_bullet ~ ~ ~ {Tags:[synb.type.enemy_associate,synb.tmp.new],Steps:2}
data modify entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:shulker_bullet,tag=synb.tmp.new,limit=1] Owner set from entity @s UUID
data modify entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:shulker_bullet,tag=synb.tmp.new,limit=1] Target set from entity @p[team=sl.player,tag=synb.attr.player_in_arena,distance=..45,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] UUID
playsound minecraft:entity.shulker.shoot hostile @a ~ ~ ~ 0.5 2
particle minecraft:poof ~ ~ ~ 0 0 0 0.01 4
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:shulker_bullet,tag=synb.tmp.new] remove synb.tmp.new