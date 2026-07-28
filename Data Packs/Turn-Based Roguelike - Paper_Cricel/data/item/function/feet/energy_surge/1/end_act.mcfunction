
tag @s remove pc.feet.energy_surge.1
function sys:utils/local_thread/atker/save {id:"feet.energy_surge"}

data modify storage pc:temp range set value {type:'3x3',mode:'victim',target:'enemy'}
function sys:grid/range/use

execute store result score #damage pc.main run data get entity @s data.hotbar.feet.combat.ep
function sys:entity/dmg/atker

function sys:utils/local_thread/atker/load {id:"feet.energy_surge"}

# fx
playsound minecraft:block.sculk.charge master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:block.sculk.charge master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:entity.nautilus.dash master @a ~ ~1024 ~ 0 1.5 0.25

execute positioned ~ ~0.25 ~ run function item:feet/energy_surge/1/fx
