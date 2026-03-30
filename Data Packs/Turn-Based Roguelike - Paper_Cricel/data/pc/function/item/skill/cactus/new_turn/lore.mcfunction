
data modify storage pc:temp desc.lore set value {\
    index: 7,\
    item:'cactus',\
    text:[{"text": "", "italic": false, "color": "gray"}, {"text": "● ", "color": "#72bd7a"}, {"text": "x : "}, {score:{name:"#var",objective:"pc.main"}}],\
}
function pc:sys/item/refresh/use