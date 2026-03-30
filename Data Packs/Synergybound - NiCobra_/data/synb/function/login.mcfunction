# SKYLANDS HOOK
function sl:api/disable_plate_checkpoint
function sl:api/disable_saturation

playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 1 0.7
title @s times 10 100 20
title @s title [{"text":"Synergybound: ",color:"white",bold:true},{"text":"Arenas",color:"gold",bold:true}]
title @s subtitle [{"text":"By ",color:"gray"},{"text":"Nicobra_",color:"white"}]