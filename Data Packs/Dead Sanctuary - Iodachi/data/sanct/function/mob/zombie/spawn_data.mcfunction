damage @s[tag=sanct.armor_target] 0.0000001 minecraft:arrow

execute unless data storage sanct:storage root.summon.zombie.knockback_resistance run return 1
execute if data storage sanct:storage {root:{summon:{zombie:{knockback_resistance:20b}}}} run return run attribute @s minecraft:knockback_resistance base set 0.2
execute if data storage sanct:storage {root:{summon:{zombie:{knockback_resistance:40b}}}} run return run attribute @s minecraft:knockback_resistance base set 0.4
execute if data storage sanct:storage {root:{summon:{zombie:{knockback_resistance:60b}}}} run return run attribute @s minecraft:knockback_resistance base set 0.6
attribute @s minecraft:knockback_resistance base set 0.8