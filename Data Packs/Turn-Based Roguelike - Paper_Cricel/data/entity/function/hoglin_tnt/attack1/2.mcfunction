
function entity:hoglin_tnt/attack1/3

execute rotated ~180 0 run function sys:entity/repel/use
function effect:tnt_tank/use

function entity:hoglin_tnt/attack1/clear

# fx
function sys:entity/intent/interrupt
function entity:hoglin_tnt/attack1/fx_hit