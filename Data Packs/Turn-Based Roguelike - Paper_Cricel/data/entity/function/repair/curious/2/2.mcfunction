
scoreboard players set #value pc.main 2
function sys:utils/math/calculate {id:"entity @s data.hotbar.repair.combat.hpmax"}

data modify storage pc:temp effect set value {id:'energized',value:1}
execute store result score #self sl.id run data get entity @s data.repair.owner
execute as @e[predicate=sys:entity/player,predicate=sys:owner/player,limit=1] at @s run function sys:effect/apply

# fx
function sys:fx/text/use {text:{nbt:"sys.fx.stubborn",storage:"pc:lang",interpret:1b}}
function sys:fx/buff/use

particle minecraft:heart ~ ~0.5 ~ 0.5 0.3 0.5 0 5 force
playsound minecraft:entity.witch.drink master @a ~ ~1024 ~ 0 1.5 1