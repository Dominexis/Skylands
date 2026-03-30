
# Gamemode changed to survival
gamemode adventure @s[gamemode=survival]

# Book missing from inventory
execute if predicate sanct:inventory/book/missing run function sanct:book/thrown/tick

# Active spell page missing from offhand slot
execute if predicate sanct:inventory/page/missing anchored eyes positioned ^ ^ ^ run function sanct:inventory/page/missing

# Locked inventory slots
execute if predicate sanct:inventory/lock_check/hotbar run function sanct:inventory/lock/hotbar
execute if predicate sanct:inventory/lock_check/bottom run function sanct:inventory/lock/bottom
execute if predicate sanct:inventory/lock_check/middle run function sanct:inventory/lock/middle
execute if predicate sanct:inventory/lock_check/top run function sanct:inventory/lock/top

# Fell off island
execute if predicate sanct:player/off_island run kill @s

# Dropping rune item
execute if score @s sanct.spell.rune matches 2.. run function sanct:spell/alchemy/rune/update_effects

# Spring health regen
execute if entity @e[type=minecraft:area_effect_cloud,tag=sanct.spring_health,distance=..1,limit=1] run function sanct:spell/ritual/spring_health/heal

# Swarm damage spell effects
execute unless score @s sanct.respawn_timer matches 1.. if predicate sanct:spell/swarm_damage_update_effects run function sanct:spell/buff/swarm_damage/update_effects
execute if entity @s[advancements={sanct:spell/swarm_damage/active_buff=true}] run function sanct:spell/buff/swarm_damage/particle

# Totem effects
execute if entity @e[type=minecraft:interaction,tag=sanct.totem,distance=..5] run effect give @s minecraft:strength 1 0
execute if entity @e[type=minecraft:interaction,tag=sanct.totem,distance=..5] run effect give @s minecraft:resistance 1 0

# Saturation
execute if entity @s[advancements={sanct:tags={saturation=true}},scores={sanct.food=..19}] run effect give @s minecraft:saturation 1 5 true

# Awakened Blade introduction
execute if entity @s[advancements={sanct:tags={weapon_sweeping_introduce=false}},predicate=sanct:spell/weapon_sweeping/blood_holding] run function sanct:spell/alchemy/weapon_sweeping/blood/whisper/introduce