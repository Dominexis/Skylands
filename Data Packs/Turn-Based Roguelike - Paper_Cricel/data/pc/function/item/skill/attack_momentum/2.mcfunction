
# effect
function pc:sys/grid/select/mob

scoreboard players operation #damage pc.main = #var pc.main
scoreboard players operation #damage pc.main *= #30 sl.value
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx