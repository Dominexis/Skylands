## (exe) victim

tag @s remove pc.atker
function sys:grid/range/clear

$scoreboard players set @e[tag=pc.local_thread.$(id).victim] pc.entity.victim 1
$tag @e[tag=pc.local_thread.$(id).victim] remove pc.local_thread.$(id).victim

$tag @e[tag=pc.local_thread.$(id).atker,limit=1] add pc.atker
$tag @e[tag=pc.local_thread.$(id).atker,limit=1] remove pc.local_thread.$(id).atker

function sys:utils/local_thread/damage/load