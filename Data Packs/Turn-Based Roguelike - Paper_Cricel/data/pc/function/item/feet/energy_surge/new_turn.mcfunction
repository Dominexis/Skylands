
## reset the once-per-turn durability-save + its lore status
## (runs before the turn-start hotbar rebuild, so no explicit update needed)
tag @s remove pc.feet.energy_surge.2.used
data modify entity @s data.hotbar.feet.combat.this_turn set from storage pc:lang sys.lore.untriggered
