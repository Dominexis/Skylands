## usage : append item's icon and lore to storage
## input : (macro) {hotbar:"move",color:"#E3A867"}
## output: (storage) pc:utils data.stat.hotbar.move

# if (no item) :
$execute unless data storage pc:utils data.entity.hotbar.$(hotbar).id run return run data modify storage pc:utils data.stat.hotbar."$(hotbar)" set value [{text:"[",color:"dark_gray"},{text:"\ue008",font:"sys:space"},{text:"]"}]

# else :
$data modify storage pc:temp item set from storage pc:utils data.entity.hotbar.$(hotbar)

item replace entity 20060423-0-0-0-1 contents with paper
execute as 20060423-0-0-0-1 run function sys:item/update/name
execute as 20060423-0-0-0-1 run function sys:item/update/lore/use
data modify storage pc:temp item.desc set value [[{nbt:"item.components.minecraft:item_name",entity:"20060423-0-0-0-1",interpret:1b}]]
data modify storage pc:temp item.desc append from entity 20060423-0-0-0-1 item.components.minecraft:lore[]

$data modify entity 20060423-0-0-0-2 text set value [{text:"",extra:["[",{nbt:"item.sprite",storage:"pc:temp",shadow_color:0,color:"white",interpret:1b},"]"],color:"$(color)",hover_event:{action:"show_text",value:[{nbt:"item.desc[]",storage:"pc:temp",interpret:1b,separator:"\n"}]}}]
$data modify storage pc:utils data.stat.hotbar."$(hotbar)" set from entity 20060423-0-0-0-2 text

data remove storage pc:temp item