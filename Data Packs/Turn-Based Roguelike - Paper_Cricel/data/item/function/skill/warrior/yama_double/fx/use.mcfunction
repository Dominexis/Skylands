## (exe) enemy
## (pos) player

summon marker ~ ~ ~ {Tags:[pc.fx,pc.skill.yama_double,pc.summon]}

execute facing entity @s feet anchored eyes facing ^ ^1 ^-4 run rotate @e[tag=pc.summon,type=marker,limit=1] ~ ~
scoreboard players operation @e[tag=pc.summon,type=marker,limit=1] pc.target.id = @s pc.entity.id

tag @e[tag=pc.summon,type=marker,limit=1] remove pc.summon