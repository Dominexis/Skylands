
# effect
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.in_combat.chest.repair_core"}
scoreboard players operation #var pc.main %= #5 sl.value

data modify storage pc:temp desc.lore set value {slot:"entity @s armor.chest",index:8,text:[{"text": "", "italic": false, "color": "gray"}, {"text": "● ", "color": "#72bd7a"}, {"text": "ᴛɪᴍᴇꜱ : "},{score:{objective:"pc.main",name:"#var"}}],}
function pc:sys/item/refresh/use

execute if score #var pc.main matches 0 run function pc:item/chest/repair_core/use_repair/2