
# effect
data modify entity @s text set value ["",{bold:1b,color:"gold",nbt:"desc.item_name.energy",storage:"pc:temp",source:"storage",type:"nbt"},{font:"pc:default",text:"\uf001\uf00b0 ",type:"text"},{nbt:"desc.item_name.name",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"}]
data modify storage pc:temp desc.item_name.output set from entity @s text

kill @s