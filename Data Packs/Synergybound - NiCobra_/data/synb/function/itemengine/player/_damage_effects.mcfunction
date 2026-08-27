# /!\ Uncompiled
# As/At : enemy
# Args :
#   - dmg_hearts (macro)
##

playsound minecraft:entity.player.attack.crit hostile @a ~ ~ ~ 0.5 2
$particle minecraft:damage_indicator ~ ~0.5 ~ 0 1 0 0.5 $(dmg_hearts)
particle minecraft:crit ~ ~0.5 ~ 0 1 0 0.5 5