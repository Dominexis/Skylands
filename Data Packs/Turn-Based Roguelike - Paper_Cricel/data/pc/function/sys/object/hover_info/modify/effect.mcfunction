
# effect
function pc:passive/effect/icon
execute if data storage pc:temp hover.display.effect run data modify storage pc:temp hover.display.effect prepend value [{text:"\n"},{text:"\ue000",font:"pc:effect"}]