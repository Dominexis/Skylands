
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function sys:entity/dmg/atker

function sys:grid/range/clear

# fx
particle minecraft:item{item:"fire_charge"} ~ ~1 ~ 0.2 0.2 0.2 0.2 10 force
playsound minecraft:entity.player.hurt_on_fire master @a ~ ~1024 ~ 0 0.75 0.5