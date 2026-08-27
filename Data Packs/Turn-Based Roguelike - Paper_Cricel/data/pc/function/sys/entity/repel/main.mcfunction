
scoreboard players add @s pc.duration 1

scoreboard players operation #self pc.entity.id = @s pc.target.id
tp @e[predicate=pc:sys/entity/any_real,predicate=pc:sys/owner/entity,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] ~ ~ ~

execute if score @s pc.duration matches 13.. run function pc:sys/entity/repel/3