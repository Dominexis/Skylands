
data modify entity @s data.intent.self set value {text:[{translate:"pc:nouns.undying_shell",font:"pc:sys/nouns"}],extra:[{id:'undying_shell',category:"effect"}]}

data modify storage pc:temp intent set value {text:[{translate:"pc:nouns.undying_shell",font:"pc:sys/nouns"}]}
data modify storage pc:temp range set value {type:'0',mode:'intent'}
function pc:sys/grid/range/use