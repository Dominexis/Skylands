
execute if data entity @s data.effect.shield_buffer run return fail
execute if data entity @s data.effect.no_wearsoff_shield run return fail

# Now Shield
execute store result score #shield pc.main run data get entity @s data.shield

# Calculate
execute if data entity @s data.in_combat.chest.literally_armor run scoreboard players remove #shield pc.main 80
execute unless data entity @s data.in_combat.chest.literally_armor run scoreboard players set #shield pc.main 0

# End Shield
execute if score #shield pc.main matches 1.. store result entity @s data.shield int 1 run scoreboard players get #shield pc.main
execute unless score #shield pc.main matches 1.. run data remove entity @s data.shield