
function sys:item/db/api/load with storage pc:temp passive.current
execute if score #db pc.main matches ..0 run return fail

execute store result storage pc:temp shield.value int 1 run scoreboard players get #db pc.main
function sys:entity/shield/use

data modify storage pc:temp repair set value {slot:"current",value:-1}
function sys:item/db/use

# fx
playsound minecraft:block.beacon.power_select master @a ~ ~1024 ~ 0 2 1
playsound minecraft:block.vault.eject_item master @a ~ ~1024 ~ 0 0.75 1