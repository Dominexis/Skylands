
scoreboard players add @s pc.duration 1
scoreboard players operation #self pc.entity.id = @s pc.target.id
tag @e[predicate=pc:sys/owner/entity,predicate=pc:sys/entity/any_real,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] add pc.entity.target

execute at @s run function pc:item/skill/warrior/yama_double/fx/2
execute at @s run function pc:item/skill/warrior/yama_double/fx/2
execute at @s run function pc:item/skill/warrior/yama_double/fx/2

tag @e[tag=pc.entity.target,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] remove pc.entity.target