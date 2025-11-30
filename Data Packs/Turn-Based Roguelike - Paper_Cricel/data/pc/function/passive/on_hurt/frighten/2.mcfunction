
# effect
scoreboard players set #value pc.main 1
function pc:passive/effect/apply {effect:"strength"}

execute positioned ~-5.5 ~-100 ~-5.5 run tag @e[type=minecraft:marker,dx=10,dy=200,dz=10,sort=random,limit=1,predicate=pc:grid/unoccupy,nbt={data:{type:"spac"}}] add pc.temp
data modify entity @s Pos[0] set from entity @n[type=minecraft:marker,distance=..100,tag=pc.temp] Pos[0]
data modify entity @s Pos[2] set from entity @n[type=minecraft:marker,distance=..100,tag=pc.temp] Pos[2]
tag @n[type=minecraft:marker,distance=..100,tag=pc.temp] remove pc.temp

function pc:sys/object/schedule/use {func:"function pc:passive/on_hurt/frighten/3",delay:1}

# fx
playsound minecraft:entity.ghast.hurt master @a[distance=..100,predicate=sl:player] ~ ~ ~ 0.2 1.5