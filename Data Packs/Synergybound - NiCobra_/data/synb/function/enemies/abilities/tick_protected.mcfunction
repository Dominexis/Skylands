# As/At : enemy
##

particle minecraft:dust{color:[0.73,0.1,1.0],scale:0.5} ~ ~0.2 ~ 0.4 0.1 0.4 0.3 5
execute unless entity @e[type=minecraft:item_display,tag=synb.attr.mp_orbit,distance=..3] run summon minecraft:item_display ~ ~ ~ {Tags:["synb.type.enemy_associate","synb.attr.mp_orbit"],item:{id:"minecraft:shulker_shell"},billboard:"vertical",transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}}

# Remove protection
scoreboard players set #protect synb.Tmp.Expr 0
execute on passengers if entity @s[type=minecraft:endermite,tag=synb.type.enemy] run scoreboard players set #protect synb.Tmp.Expr 1
execute if score #protect synb.Tmp.Expr matches 1 run return 0
tag @s remove synb.attr.mite_protected
data merge entity @s {Invulnerable:0b}
effect clear @s minecraft:glowing