
# effect
execute if data storage pc:temp damage.display run return fail
execute store result score #level pc.main run data get entity @s data.effect.regeneration 10
execute unless score #level pc.main matches 1.. run return fail
scoreboard players operation #level pc.main -= #damage pc.main

execute if score #level pc.main matches 0.. run function pc:passive/on_hurt/regen_shield/block
execute if score #level pc.main matches ..-1 run function pc:passive/on_hurt/regen_shield/break

scoreboard players operation #value pc.main = #level pc.main
scoreboard players operation #value pc.main /= #10 sl.value
function pc:sys/utils/math/set {id:"entity @s data.effect.regeneration"}

# fx
function pc:fx/text/use {text:[{text:"Regen Shield",color:"#92e781"}]}
particle minecraft:entity_effect{color:[0.471,1.0,0.471,1.0]} ~ ~1 ~ 0.2 0.5 0.2 1 20 force
playsound minecraft:entity.illusioner.prepare_mirror master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 0.75 2 0.75
playsound minecraft:entity.zombie.attack_iron_door master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 0.25 1.25 0.25