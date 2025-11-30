
# fx
execute if data storage pc:temp hover.display.effect run tag @s add pc.sys.hover_info.effect
execute unless data storage pc:temp hover.display.effect run tag @s remove pc.sys.hover_info.effect

data modify entity @s text set value [{nbt:"hover.display.hpvalue",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"},{nbt:"hover.display.hpbar.full",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"},{nbt:"hover.display.hpbar.empty",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"},{nbt:"hover.display.effect[]",storage:"pc:temp",interpret:1b,separator:" ",font:"pc:effect",color:"white",bold:0b,source:"storage",type:"nbt"}]
data modify entity @s transformation.translation[1] set from storage pc:temp hover.height