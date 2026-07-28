
scoreboard players remove #count pc.main 5

scoreboard players set #value pc.main 1
function sys:item/ep/gain
execute positioned ~ ~0.25 ~ run function item:skill/warrior/momentum/count/fx

execute if score #count pc.main matches 5.. run function item:skill/warrior/momentum/count/loop