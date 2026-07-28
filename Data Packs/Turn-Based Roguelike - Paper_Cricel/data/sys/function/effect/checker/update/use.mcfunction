
function sys:effect/checker/update/loop with storage pc:temp infocheck.effects[0]
data modify entity @s text set value [{nbt:"infocheck.effect[]",storage:"pc:temp",interpret:1b,separator:"\n"}]