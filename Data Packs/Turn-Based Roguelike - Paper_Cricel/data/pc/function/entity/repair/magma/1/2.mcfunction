
scoreboard players set #value pc.main 3
function pc:sys/entity/repair/complete
data remove entity @s data.repair

function pc:sys/utils/passive/use {passive:on_death}