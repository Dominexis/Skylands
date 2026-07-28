
summon marker ~ ~0.25 ~ {Tags:[pc.fx,pc.entity.slime.attack2,pc.summon]}
rotate @e[tag=pc.summon,type=marker,limit=1] ~ ~
tag @e[tag=pc.summon,type=marker,limit=1] remove pc.summon

# fx
playsound minecraft:entity.item.pickup master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:block.moss.break master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.slime.attack master @a ~ ~1024 ~ 0 0 1