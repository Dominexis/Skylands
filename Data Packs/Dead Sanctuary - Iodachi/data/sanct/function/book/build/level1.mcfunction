
# Summon spells
execute unless score #barrier_unlocked sanct.numbers matches 1.. run function sanct:book/build/summon

# Get flesh quantity
execute store result storage sanct:storage root.material_price.has_quantity short 1 run clear @s minecraft:rotten_flesh 0

# Ritual spells
function sanct:spell/ritual/more_zombie/text
function sanct:spell/ritual/basic_speed/text
function sanct:spell/ritual/spring_health/text
function sanct:spell/ritual/zombie_armor/text

# Buff spells
function sanct:spell/buff/sprint_damage/text
function sanct:spell/buff/slot_health/text
function sanct:spell/buff/slot_attack_speed/text
function sanct:spell/buff/swarm_damage/text

# Alchemy spells
function sanct:spell/alchemy/food_flesh/text
function sanct:spell/alchemy/rune/text
function sanct:spell/alchemy/undead_finder/text
function sanct:spell/alchemy/pill_health/text
function sanct:spell/alchemy/weapon_sweeping/text