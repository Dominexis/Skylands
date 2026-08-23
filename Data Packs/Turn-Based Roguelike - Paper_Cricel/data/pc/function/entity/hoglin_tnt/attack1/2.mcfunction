
function pc:entity/hoglin_tnt/attack1/3

execute rotated ~180 0 run function pc:sys/entity/repel/use
function pc:effect/tnt_tank/use

function pc:entity/hoglin_tnt/attack1/clear

# fx
function pc:sys/entity/intent/interrupt
function pc:entity/hoglin_tnt/attack1/fx_hit