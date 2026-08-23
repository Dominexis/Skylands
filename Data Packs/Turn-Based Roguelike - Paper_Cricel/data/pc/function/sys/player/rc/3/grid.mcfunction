
tag @s add pc.grid.atker

scoreboard players operation #self pc.entity.id = @s pc.grid.selector
tag @e[predicate=pc:sys/owner/entity,predicate=pc:sys/entity/any_real,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] add pc.player.selector