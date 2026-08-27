
data modify storage pc:temp passive.passives append from entity @s data.hotbar.move
data modify storage pc:temp passive.passives append from entity @s data.hotbar.repair
data modify storage pc:temp passive.passives append from entity @s data.hotbar.skill[]
data modify storage pc:temp passive.passives append from entity @s data.hotbar.head
data modify storage pc:temp passive.passives append from entity @s data.hotbar.chest
data modify storage pc:temp passive.passives append from entity @s data.hotbar.legs
data modify storage pc:temp passive.passives append from entity @s data.hotbar.feet
data modify storage pc:temp passive.passives[].passive set from storage pc:temp passive.passive
function pc:sys/utils/passive/player/loop