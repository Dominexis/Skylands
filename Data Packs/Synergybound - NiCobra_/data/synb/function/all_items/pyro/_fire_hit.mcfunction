execute unless entity @e[type=!minecraft:player,tag=synb.type.enemy,distance=..1.3] run return 0

effect give @e[type=!minecraft:player,tag=synb.type.enemy,distance=..1.3] minecraft:slowness 1 1 true
execute as @e[type=!minecraft:player,tag=synb.type.enemy,distance=..1.3] run function synb:itemengine/player/damage_enemy {dmg:1}
execute at @e[type=!minecraft:player,tag=synb.type.enemy,distance=..1.3] run particle minecraft:flame ~ ~0.6 ~ 0.1 0.3 0.1 0.05 4
scoreboard players remove @s synb.Item.pyro.fire_health 1

function synb:all_items/pyro/_update_fire

execute if score @s synb.Item.pyro.fire_health matches ..0 run playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 0.8 1.5
execute if score @s synb.Item.pyro.fire_health matches ..0 run particle minecraft:large_smoke ~ ~0.1 ~ 0.3 0 0.3 0.01 4
kill @s[scores={synb.Item.pyro.fire_health=..0}]