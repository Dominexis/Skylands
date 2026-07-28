
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function sys:entity/dmg/atker

data modify storage pc:temp effect set value {id:'strength',value:-2,temp:1b}
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:effect/apply

function sys:grid/range/clear
kill @s

# fx
playsound minecraft:entity.guardian.hurt master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~1024 ~ 0 2 0.25