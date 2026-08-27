
scoreboard players set #value pc.main 2
function pc:sys/utils/math/calculate {id:"entity @s data.hotbar.repair.combat.hpmax"}

data modify storage pc:temp effect set value {id:'energized',value:1}
execute store result score #self sl.id run data get entity @s data.repair.owner
execute as @e[predicate=pc:sys/entity/player,predicate=pc:sys/owner/player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/effect/apply

# fx
function pc:sys/fx/text/use {text:{nbt:"sys.fx.stubborn",storage:"pc:lang",interpret:1b}}
function pc:sys/fx/buff/use

particle minecraft:heart ~ ~0.5 ~ 0.5 0.3 0.5 0 5 force
playsound minecraft:entity.witch.drink master @a ~ ~1024 ~ 0 1.5 1