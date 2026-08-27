# /!\ Uncompiled
# As : player
# Args :
#   - heal_amount (macro)
##

# This could be just a single line, but to not mess up existing logic and make it flexible, let's not change that.
$scoreboard players add @s synb.IEPlayer.RegenTime $(heal_amount)