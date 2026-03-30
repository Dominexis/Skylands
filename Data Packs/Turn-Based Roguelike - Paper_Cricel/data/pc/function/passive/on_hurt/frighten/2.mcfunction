
# effect
scoreboard players set #value pc.main 1
function pc:passive/effect/apply {effect:strength}

execute positioned ~-5.5 ~-100 ~-5.5 run tag @e[type=marker,predicate=pc:grid/unoccupy,nbt={data:{type:"spac"}},dx=10,dy=200,dz=10,sort=random,limit=1] add pc.temp
data modify entity @s Pos[0] set from entity @n[type=marker,tag=pc.temp,distance=..100] Pos[0]
data modify entity @s Pos[2] set from entity @n[type=marker,tag=pc.temp,distance=..100] Pos[2]
tag @n[type=marker,tag=pc.temp,distance=..100] remove pc.temp

function pc:sys/object/schedule/use {func:"function pc:passive/on_hurt/frighten/3",delay:1}

# fx
playsound minecraft:entity.ghast.hurt master @a[predicate=sl:player,distance=..100] ~ ~ ~ 0.2 1.5