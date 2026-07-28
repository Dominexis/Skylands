
summon marker ~ ~ ~ {Tags:[pc.fx,pc.entity.blaze.attack2,pc.summon]}
rotate @e[tag=pc.summon,type=marker,limit=1] ~ -60
tag @e[tag=pc.summon,type=marker,limit=1] remove pc.summon

# fx
playsound minecraft:entity.blaze.shoot master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.warden.hurt master @a ~ ~1024 ~ 0 0 0.3