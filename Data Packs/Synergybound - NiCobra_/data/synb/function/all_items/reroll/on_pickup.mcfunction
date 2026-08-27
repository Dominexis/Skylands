# Purposefully letting a bug that could be interesting (relic_clone)

execute store result storage synb.d:tmp args.env int 1 run scoreboard players get @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] synb.ASys.ArenaID
# Avoid shop items because of box for example
execute as @e[type=minecraft:item_display,tag=synb.type.collectible,tag=!synb.attr.source_shop,distance=2..,tag=synb.ctx.local] at @s run function synb:elements/collectible/reroll with storage synb.d:tmp args

scoreboard players add @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.reroll_cauldron,tag=synb.ctx.local] synb.Shop.RerollProgress 5
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.reroll_cauldron,tag=synb.ctx.local] at @s run function synb:elements/cauldron/_trigger