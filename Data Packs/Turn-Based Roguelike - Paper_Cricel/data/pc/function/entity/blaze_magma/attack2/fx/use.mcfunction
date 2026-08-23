
summon marker ~ ~ ~ {Tags:[pc.fx,pc.entity.blaze_magma.attack2,pc.summon]}
rotate @e[tag=pc.summon,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ -60
tag @e[tag=pc.summon,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.summon

# fx
playsound minecraft:entity.blaze.shoot master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.warden.hurt master @a ~ ~1024 ~ 0 0 0.3