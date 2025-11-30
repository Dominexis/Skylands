
# display
data modify storage pc:temp desc.lore set value {\
    slot: 'entity @s armor.head',\
    index: 4,\
    text: [{"text": "", "italic": false, "color": "gray"}, {"text": "● ", "color": "#72bd7a"}, {"text": "ᴄᴏᴜɴᴛ : "}, {score:{name:"#var",objective:"pc.main"}}],\
}
function pc:sys/item/refresh/use