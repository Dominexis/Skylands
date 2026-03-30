
# effect
function pc:sys/grid/select/mob

scoreboard players set #damage pc.main 90
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
function pc:item/skill/panic_strike/fx/use