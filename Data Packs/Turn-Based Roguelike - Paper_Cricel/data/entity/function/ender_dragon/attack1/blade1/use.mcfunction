
summon minecraft:marker ~ ~1 ~ {Tags:["pc.fx","pc.entity.ender_dragon.attack1.blade1","pc.summon"]}
rotate @e[tag=pc.summon,type=minecraft:marker,limit=1] ~ 0
tag @e[tag=pc.summon,type=minecraft:marker,limit=1] remove pc.summon

# fx
playsound minecraft:entity.player.attack.nodamage master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.player.attack.nodamage master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.player.attack.nodamage master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.player.attack.nodamage master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~1024 ~ 0 0.5 0.75