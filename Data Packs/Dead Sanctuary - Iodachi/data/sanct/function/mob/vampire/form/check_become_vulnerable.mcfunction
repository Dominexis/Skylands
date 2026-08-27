
execute at @e[x=-2384,y=-16,z=2224,dx=158,dy=158,dz=158,type=minecraft:bat] if score @e[type=minecraft:bat,distance=0,limit=1] sanct.id = @s sanct.id run tag @s add sanct.remain_invulnerable
execute if entity @s[tag=sanct.remain_invulnerable] run return run tag @s remove sanct.remain_invulnerable


function sanct:mob/vampire/vulnerable/summon with storage sanct:storage root.summon.vampire.stat
function sanct:mob/vampire/vulnerable/clock
particle minecraft:large_smoke ~ ~0.5 ~ 0.3 0.3 0.3 0 20
playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..16]
tp @s ~ -130 ~
kill @s
return fail