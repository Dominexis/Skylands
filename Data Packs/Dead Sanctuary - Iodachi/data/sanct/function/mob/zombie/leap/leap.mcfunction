
# Ignore second leap if near a player
execute if score @s sanct.spell.revenge matches 0 if entity @a[predicate=sl:player,distance=..3,limit=1] run return run data modify entity @s Silent set value 0b

# Feedback effects
particle minecraft:dust_plume ~ ~ ~ 0.3 0 0.3 0 30
playsound minecraft:entity.zombie.infect hostile @a[distance=..16] ~ ~ ~ 1 0.8

attribute @s minecraft:knockback_resistance modifier add sanct:leap -1 add_multiplied_total
execute if score @s sanct.spell.revenge matches -1 run data modify entity @s Silent set value 1b

# Leap towards target
execute on target run advancement grant @s only sanct:tags target
execute facing entity @a[distance=..35,advancements={sanct:tags={target=true}},limit=1,team=sl.player] eyes run damage @s 0.0000001 minecraft:arrow at ^ ^ ^-1
execute on target run advancement revoke @s only sanct:tags target

execute if score @s sanct.spell.revenge matches 0 run data modify entity @s Silent set value 0b
attribute @s minecraft:knockback_resistance modifier remove sanct:leap