
# Return if there are too many mobs
execute store result score #var sanct.numbers if entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:undead]
execute if score #var sanct.numbers matches 100.. run return run tellraw @s "§cSome undead must be killed before more can be summoned"

# Return if player has iframes
execute unless entity @s[nbt={HurtTime:0s}] run return run tellraw @s "§cYou cannot §6§lCREATE HUSK§c while invulnerable"

# Summon husk
function sanct:mob/husk/spawn
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"blue"},{"selector":"@s"},{"text":" casts §6§lCREATE HUSK"}]

# Knockback effect
attribute @s minecraft:knockback_resistance modifier add sanct:summon_husk -1 add_multiplied_total
execute rotated ~ 0 run damage @s 0.0000001 minecraft:arrow at ^ ^ ^1
attribute @s minecraft:knockback_resistance modifier remove sanct:summon_husk

# Casting can kill if there was already a husk nearby
execute store result score #var sanct.numbers if entity @e[type=minecraft:husk,distance=..6,limit=2]
execute if score #var sanct.numbers matches 2.. run return run damage @s 4 minecraft:drown

# Otherwise deal at most enough damage to bring player to half a heart
execute unless score @s sanct.health matches ..4 run return run damage @s 4 minecraft:drown
execute if score @s sanct.health matches 4 run return run damage @s 3 minecraft:drown
execute if score @s sanct.health matches 3 run return run damage @s 2 minecraft:drown
execute if score @s sanct.health matches 2 run damage @s 1 minecraft:drown