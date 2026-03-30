# As/At : evader (enemy)
##

scoreboard players reset @s synb.Enemy.GenericCharge
kill @e[type=minecraft:item_display,tag=synb.attr.evader_orbit,distance=..3,limit=1,sort=nearest]

# Select pos (can't use ctx) TP to furthest pos without players and without itself
tag @e[type=minecraft:marker,tag=synb.mark.spawnpos,distance=..30] add synb.tmp.tp_candidate
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.tp_candidate] at @s if entity @a[team=sl.player,tag=synb.attr.player_in_arena,distance=..12] run tag @s remove synb.tmp.tp_candidate
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.tp_candidate,distance=..10] remove synb.tmp.tp_candidate
tag @e[type=!minecraft:player,tag=synb.tmp.tp_candidate,distance=..30,sort=furthest,limit=1] add synb.tmp.tp_target
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_candidate] remove synb.tmp.tp_candidate

# Cancel TP if no pos
execute unless entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.tp_target] run return 0

# TP
particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~0.3 ~ 0 0 0 1 1
playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 1
tp @s @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.tp_target,limit=1]
execute at @s run particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~0.3 ~ 0 0 0 1 1

tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.tp_target] remove synb.tmp.tp_target