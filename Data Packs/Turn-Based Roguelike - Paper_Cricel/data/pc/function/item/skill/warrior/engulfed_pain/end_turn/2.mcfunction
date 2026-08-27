
execute unless data entity @s data.effects[{id:"vulnerable"}] run return fail

scoreboard players set @s pc.entity.victim 1
execute store result score @s pc.damage run data get entity @s data.effects[{id:"vulnerable"}].value

# fx
particle minecraft:sculk_soul ~ ~1.5 ~ 0.3 0.6 0.3 0.05 10 force
particle minecraft:large_smoke ~ ~1.5 ~ 0.3 0.6 0.3 0.1 30 force
playsound minecraft:entity.warden.hurt master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~1024 ~ 0 1 0.5