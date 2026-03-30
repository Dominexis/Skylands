##

scoreboard objectives add synb.IEPlayer.Registered dummy
data modify storage synb.d:itemengine players_inv set value [[]]
scoreboard objectives add synb.IEExecLayer dummy
scoreboard objectives add synb.IETotalItems dummy

function synb:itemengine/triggers/g_init
function synb:itemengine/mod/g_init

scoreboard players set %registered_items synb.Info 0
data modify storage synb.d:itemengine registered_items set value []

# Values
data modify storage synb.d:values melee_material set value ["wooden","stone","copper","iron","golden","diamond","netherite"]
data modify storage synb.d:values melee_shape set value ["axe","sword","hoe"]