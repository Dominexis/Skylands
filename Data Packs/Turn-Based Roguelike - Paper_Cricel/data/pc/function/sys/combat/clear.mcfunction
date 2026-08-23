
execute as @e[tag=pc.fx,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/void
execute as @e[tag=pc.grid,type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/void
execute as @e[tag=pc.intent,type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/void
execute as @e[tag=pc.select,type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/void
execute as @e[predicate=pc:sys/entity/any_real,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/void
function pc:sys/entity/intent/icon/clear
kill 20060423-0-0-1-0

scoreboard players reset $act.running pc.game
data remove storage pc:temp passive
data remove storage pc:temp grid