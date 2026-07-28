
$execute unless data storage pc:temp infocheck.processed_effect."$(id)" run data modify storage pc:temp infocheck.effect append value ["",\
    {color:"#fef1c6",bold:1b,nbt:"nouns.$(id).name",storage:"pc:lang",interpret:1b}," ",\
    {font:"sys:nouns_smaller",translate:"pc:nouns.$(id)"},"\n",\
    {nbt:"nouns.$(id).desc",storage:"pc:lang",interpret:1b}\
]
$data modify storage pc:temp infocheck.processed_effect."$(id)" set value 1b

data remove storage pc:temp infocheck.effects[0]
execute if data storage pc:temp infocheck.effects[0] run function sys:effect/checker/update/loop with storage pc:temp infocheck.effects[0]