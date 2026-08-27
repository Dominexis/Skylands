tag @s remove synb.item.electric_arcs.source

execute if score @s synb.Item.electric_arcs.zap_cooldown matches 1.. run return 0

scoreboard players add @s synb.Item.electric_arcs.zap_cooldown 3

# arg.particle_arc_target used also as a temporary tag for the target
tag @e[type=!minecraft:player,tag=synb.type.enemy,tag=!synb.item.electric_arcs.target,tag=!synb.item.electric_arcs.next_target,distance=..40] add synb.arg.particle_arc_target
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,scores={synb.Item.electric_arcs.zap_cooldown=1..}] remove synb.arg.particle_arc_target

execute if entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,scores={synb.IEItemCount.electric_arcs=1}] run tag @e[type=!minecraft:player,tag=synb.arg.particle_arc_target,distance=6..100] remove synb.arg.particle_arc_target
execute if entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,scores={synb.IEItemCount.electric_arcs=2}] run tag @e[type=!minecraft:player,tag=synb.arg.particle_arc_target,distance=14..100] remove synb.arg.particle_arc_target
execute if entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,scores={synb.IEItemCount.electric_arcs=3}] run tag @e[type=!minecraft:player,tag=synb.arg.particle_arc_target,distance=22..100] remove synb.arg.particle_arc_target

scoreboard players set #particle synb.Tmp.Arg 0
function synb:utils/visuals/start_arc
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.arg.particle_arc_target] add synb.item.electric_arcs.next_target
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.arg.particle_arc_target] remove synb.arg.particle_arc_target