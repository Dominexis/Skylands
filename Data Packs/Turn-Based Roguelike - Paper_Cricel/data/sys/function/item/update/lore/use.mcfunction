
data modify storage pc:temp update.lore.result append value [{"text": ">>","color": "gray"},{"text": "> ","color": "#72BD7A","bold": true},{"nbt":"sys.lore.ability",storage:"pc:lang",interpret:true}]
data modify storage pc:temp update.lore.result append from storage pc:temp item.lore[]
data modify storage pc:temp update.lore.result append value [""]
data modify storage pc:temp update.lore.result append value [{"text": ">>","color": "gray"},{"text": "> ","color": "#72BD7A","bold": true},{"nbt":"sys.lore.details",storage:"pc:lang",interpret:true}]
execute if data storage pc:temp item.db.base run data modify storage pc:temp update.lore.result append value [{"text":"● ","color":"#72BD7A"},{"color":"gray","nbt":"sys.lore.db.value","storage":"pc:lang"},{"color":"gray","text":" : "},{"color":"gray","nbt":"item.db.max","storage":"pc:temp"},{"font":"sys:icon","text":"\ue00b1","color":"white"}]
data modify storage pc:temp update.lore.result append value [{"text":"● ","color":"#72BD7A"},{"color":"gray","nbt":"sys.lore.category","storage":"pc:lang"},{"color":"gray","text":" : "},{"color":"gray","nbt":"update.lore.category","storage":"pc:temp"}]
execute if data storage pc:temp item.rarity run function sys:item/update/lore/rarity with storage pc:temp item
execute if data storage pc:temp item.rarity run data modify storage pc:temp update.lore.result append value [{"text":"● ","color":"#72BD7A"},{"color":"gray","nbt":"sys.lore.rarity","storage":"pc:lang"},{"color":"gray","text":" : "},{"nbt":"update.lore.rarity","storage":"pc:temp","interpret":true}]

data modify storage pc:temp update.lore.result[] prepend value {"text":"","italic":false,"color":"white"}
function sys:item/update/lore/category with storage pc:temp item

item modify entity @s contents {function:"set_lore",entity:"this",lore:[],mode:"replace_all"}
execute store result score #count pc.main if data storage pc:temp update.lore.result[]
function sys:item/update/lore/interpret

data remove storage pc:temp update