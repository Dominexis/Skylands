
summon marker ~ ~0.25 ~ {Tags:[pc.fx,pc.entity.slime.attack2,pc.summon]}
rotate @e[tag=pc.summon,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~
tag @e[tag=pc.summon,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.summon

# fx
playsound minecraft:entity.item.pickup master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:block.moss.break master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.slime.attack master @a ~ ~1024 ~ 0 0 1