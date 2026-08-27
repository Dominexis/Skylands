##

scoreboard objectives remove synb.IEPlayer.Registered
scoreboard objectives remove synb.IEExecLayer
scoreboard objectives remove synb.IETotalItems

function synb:itemengine/triggers/g_unregister
function synb:itemengine/mod/g_unregister

data remove storage synb.d:itemengine players_inv

function synb:itemengine/rec_unregister_items
data remove storage synb.d:itemengine registered_items
scoreboard players set %registered_items synb.Info 0

# Values
data remove storage synb.d:values melee_material
data remove storage synb.d:values melee_shape
data remove storage synb.d:values item