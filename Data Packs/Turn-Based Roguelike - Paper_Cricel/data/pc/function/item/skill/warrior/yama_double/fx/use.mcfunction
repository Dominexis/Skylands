## (exe) enemy
## (pos) player

summon marker ~ ~ ~ {Tags:[pc.fx,pc.skill.yama_double,pc.summon]}

execute facing entity @s feet anchored eyes facing ^ ^1 ^-4 run rotate @e[tag=pc.summon,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~
scoreboard players operation @e[tag=pc.summon,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.target.id = @s pc.entity.id

tag @e[tag=pc.summon,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.summon