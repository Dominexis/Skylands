
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'enemy'}
function pc:sys/grid/range/use

scoreboard players set #damage pc.main 4
function pc:sys/entity/dmg/atker

function pc:sys/grid/range/clear

# fx
particle poof ~ ~1 ~ 0 0 0 0.1 4 force
particle sweep_attack ~ ~1 ~ 0.2 0.2 0.2 0 2 force
playsound entity.player.attack.strong master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.wither.shoot master @a ~ ~1024 ~ 0 1.5 0.2
playsound minecraft:entity.zombie_villager.converted master @a ~ ~1024 ~ 0 1.5 0.4