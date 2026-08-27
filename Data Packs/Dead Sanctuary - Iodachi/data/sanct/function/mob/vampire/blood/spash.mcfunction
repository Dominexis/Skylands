execute if predicate sanct:mob/vampire/blood_slow run effect give @s minecraft:speed 1 1 true

execute unless entity @e[type=area_effect_cloud,distance=..2,tag=sanct.vampire_splash] run playsound minecraft:entity.slime.squish hostile @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] ~ ~ ~ 0.5 .5

execute unless entity @e[type=area_effect_cloud,distance=..2,tag=sanct.vampire_splash] run return run summon area_effect_cloud ~ ~ ~ {potion_contents:{custom_color:-9109504},WaitTime:0,Radius:2f,Duration:200,Tags:["sanct.vampire_splash"]}

execute if entity @a[limit=1,distance=..2,team=sl.player] unless entity @e[type=area_effect_cloud,distance=..0.5,tag=sanct.vampire_splash] run summon area_effect_cloud ~ ~ ~ {potion_contents:{custom_color:-9109504},WaitTime:0,Radius:2f,Duration:200,Tags:["sanct.vampire_splash"]}