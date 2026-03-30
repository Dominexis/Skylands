# exe : object

# effect
execute if data entity @s data.effect.revive run function pc:object/fragile_slime/on_death/revive
execute unless data entity @s data.effect.revive run function pc:object/fragile_slime/on_death/death