
# effect
function pc:sys/grid/select/mob

scoreboard players set #damage pc.main 40
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
particle sweep_attack ~ ~1 ~ 0 0 0 0 0 force