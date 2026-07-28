
summon minecraft:marker ~ ~ ~ {Tags:["pc.fx","pc.entity.ender_dragon.attack1.blade2","pc.summon"]}
rotate @e[tag=pc.summon,type=minecraft:marker,limit=1] ~ 0
tag @e[tag=pc.summon,type=minecraft:marker,limit=1] remove pc.summon

# fx
playsound minecraft:entity.wither.shoot master @a ~ ~1024 ~ 0 1 0.25
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~1024 ~ 0 0.5 0.75