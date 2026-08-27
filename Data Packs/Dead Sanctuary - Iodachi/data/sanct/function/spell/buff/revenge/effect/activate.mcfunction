
advancement revoke @s only sanct:spell/revenge damage
schedule function sanct:spell/buff/revenge/effect/clock 10

particle minecraft:lava ~ ~0.5 ~ 0.3 0.3 0.3 1 4
execute unless score @s sanct.spell.revenge matches 1.. run particle minecraft:lava ~ ~0.5 ~ 0.3 0.3 0.3 1 4
execute unless score @s sanct.spell.revenge matches 1.. run playsound minecraft:entity.generic.burn player @a[distance=..16] ~ ~ ~ 0.5
attribute @s minecraft:attack_damage modifier add sanct:revenge 2 add_value

execute if entity @s[advancements={sanct:spell/revenge={level2=false}}] run effect give @s minecraft:fire_resistance 1
execute if entity @s[advancements={sanct:spell/revenge={level2=false}}] run return run scoreboard players set @s sanct.spell.revenge 2
execute if entity @s[advancements={sanct:spell/revenge={level3=false}}] run effect give @s minecraft:fire_resistance 2
execute if entity @s[advancements={sanct:spell/revenge={level3=false}}] run return run scoreboard players set @s sanct.spell.revenge 4
execute if entity @s[advancements={sanct:spell/revenge={level4=false}}] run effect give @s minecraft:fire_resistance 3
execute if entity @s[advancements={sanct:spell/revenge={level4=false}}] run return run scoreboard players set @s sanct.spell.revenge 6
effect give @s minecraft:fire_resistance 4
scoreboard players set @s sanct.spell.revenge 8