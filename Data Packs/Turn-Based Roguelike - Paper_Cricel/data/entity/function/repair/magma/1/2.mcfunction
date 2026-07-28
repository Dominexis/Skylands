
scoreboard players set #value pc.main 3
function sys:entity/repair/complete
data remove entity @s data.repair

function sys:utils/passive/use {passive:on_death}