
# effect
data modify entity @s text set value ["",{bold:true,color:"gold",nbt: "desc.item_name.energy","storage": "pc:temp"},{font:"pc:default",text:"\uf001\uf00b0 "},{nbt: "desc.item_name.name","storage": "pc:temp","interpret":true}]
data modify storage pc:temp desc.item_name.output set from entity @s text

kill @s