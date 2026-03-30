
function sanct:spell/alchemy/rune/remove_attributes

# Get total rune count and turn off if there are none
execute store result score #var sanct.numbers store result storage sanct:storage root.rune.basic float 0.5 run clear @s minecraft:blade_pottery_sherd[minecraft:custom_data~{rune:{}}] 0
execute if score #var sanct.numbers matches 0 run return run scoreboard players set @s sanct.spell.rune 0

# Upgraded rune effects
execute store result storage sanct:storage root.rune.upgraded float 0.5 run clear @s minecraft:blade_pottery_sherd[minecraft:custom_data~{rune:{upgraded:true}}] 0
# Air
execute store result storage sanct:storage root.rune.air float 1.5 run clear @s minecraft:blade_pottery_sherd[minecraft:custom_data~{rune:{air:true}}] 0
execute unless data storage sanct:storage {root:{rune:{air:0f}}} run attribute @s minecraft:knockback_resistance modifier add sanct:rune_air 1 add_value
# Earth
execute store result storage sanct:storage root.rune.earth byte 5 store result storage sanct:storage root.rune.earth_toughness byte 2 run clear @s minecraft:blade_pottery_sherd[minecraft:custom_data~{rune:{earth:true}}] 0
# Fire
execute store result storage sanct:storage root.rune.fire float 1.5 store result storage sanct:storage root.rune.fire_reach float 0.1 run clear @s minecraft:blade_pottery_sherd[minecraft:custom_data~{rune:{fire:true}}] 0
# Water
execute store result storage sanct:storage root.rune.water float 0.35 store result storage sanct:storage root.rune.water_step float 0.5 run clear @s minecraft:blade_pottery_sherd[minecraft:custom_data~{rune:{water:true}}] 0
execute unless data storage sanct:storage {root:{rune:{water:0f}}} run attribute @s minecraft:fall_damage_multiplier modifier add sanct:rune_water -1 add_multiplied_total

# Void rune effects
execute store result storage sanct:storage root.rune.void_damage float 3.5 store result storage sanct:storage root.rune.void_health byte 2 store result storage sanct:storage root.rune.void_movement float 0.1 run clear @s minecraft:blade_pottery_sherd[minecraft:custom_data~{rune:{void:true}}] 0

# Apply effects
function sanct:spell/alchemy/rune/apply_effects with storage sanct:storage root.rune

scoreboard players set @s sanct.spell.rune 1
advancement revoke @s only sanct:spell/rune_pickup