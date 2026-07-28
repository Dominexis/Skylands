
function sys:entity/infobar/effect/interpret with storage pc:temp infobar.effects[0]
data modify entity @s text set value [{nbt:"infobar.effect",storage:"pc:temp",interpret:1b}]