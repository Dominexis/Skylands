## (storage) pc:temp item.name

execute if data storage pc:temp item.ep.base run data modify storage pc:temp update.item_name.ep set value ["",{bold:true,color:"gold",nbt:"item.ep.value",storage:"pc:temp"},{"font":"sys:icon",text:"\ue00b0 "}]
data modify storage pc:temp update.item_name.result set value [{nbt:"update.item_name.ep",storage:"pc:temp",interpret:true},{nbt:"item.name",storage:"pc:temp",interpret:true}]

item modify entity @s contents {function:"set_name",name:[{nbt:"update.item_name.result",storage:"pc:temp",interpret:1b}],entity:"this",target:"item_name"}
data remove storage pc:temp update