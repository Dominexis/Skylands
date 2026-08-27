
scoreboard players operation #self pc.entity.id = @s pc.origin.id
execute as @e[predicate=pc:sys/entity/player,predicate=pc:sys/owner/entity,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:entity/repair/curious/2/2