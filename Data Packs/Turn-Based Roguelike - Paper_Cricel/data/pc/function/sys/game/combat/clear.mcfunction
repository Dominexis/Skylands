
# effect
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!player,tag=pc.fx] at @s run function pc:void
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!player,tag=pc.grid.effect] at @s run function pc:void
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.select] at @s run function pc:void
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.grid] at @s run function pc:void
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=marker,tag=pc.intent] at @s run function pc:void
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/all,type=!player] at @s run function pc:void
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!player,tag=pc.object.mob] at @s run function pc:void
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!player,tag=pc.object.ally] at @s run function pc:void
function pc:sys/object/intent/icon/clear/all

# effect
scoreboard players reset $game.combat.start pc.main