
# effect
function pc:sys/object/walk/object

scoreboard players set #value pc.main 2
function pc:passive/effect/apply {effect:robust}

scoreboard players set #value pc.main 200
function pc:passive/shield/use

execute as @e[type=marker,tag=pc.intent.now,nbt={data:{id:"debuff"}},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:object/rusty_silverfish/walk1/2

# fx
playsound pc:magical_spike master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.25 0
playsound minecraft:entity.goat.long_jump master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1