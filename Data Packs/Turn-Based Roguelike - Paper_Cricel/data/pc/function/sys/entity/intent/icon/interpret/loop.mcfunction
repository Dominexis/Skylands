## usage : transfer pc:temp intent.text --> pc:temp intent.result

execute unless data storage pc:temp intent.text[0] run return fail
data modify storage pc:temp intent.current set from storage pc:temp intent.text[0]

function pc:sys/entity/intent/icon/interpret/2

data remove storage pc:temp intent.text[0]
function pc:sys/entity/intent/icon/interpret/loop