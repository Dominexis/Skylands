# As/At : reroll_cauldron
##

scoreboard players remove @s synb.Shop.RerollProgress 5
playsound minecraft:block.respawn_anchor.deplete block @a ~ ~ ~ 1 2
execute store result storage synb.d:tmp args.env byte 1 run scoreboard players get @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] synb.ASys.ArenaID
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.type.merchant,tag=synb.ctx.local] at @s run function synb:elements/merchant/reroll with storage synb.d:tmp args

execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] run function synb:itemengine/executor/run {func:"player_reroll"}