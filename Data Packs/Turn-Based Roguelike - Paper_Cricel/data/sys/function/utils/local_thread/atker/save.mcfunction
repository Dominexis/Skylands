## (exe) victim
## (macro) id

function sys:utils/local_thread/damage/save

$tag @e[scores={pc.entity.victim=1}] add pc.local_thread.$(id).victim
function sys:grid/range/clear

$tag @e[tag=pc.atker,limit=1] add pc.local_thread.$(id).atker
tag @e[tag=pc.atker,limit=1] remove pc.atker

tag @s add pc.atker