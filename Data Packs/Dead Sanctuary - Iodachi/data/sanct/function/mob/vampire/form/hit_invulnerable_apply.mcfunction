
execute unless function sanct:mob/vampire/form/check_become_vulnerable run return 1

schedule function sanct:mob/vampire/form/teleport_bats 1
tag @s add sanct.hit_invulnerable

stopsound @a[distance=..16] hostile minecraft:entity.vindicator.hurt
playsound minecraft:item.shield.block hostile @a[distance=..16]
particle minecraft:smoke ~ ~1 ~ .3 .5 .3 0 200
effect give @s minecraft:regeneration 1