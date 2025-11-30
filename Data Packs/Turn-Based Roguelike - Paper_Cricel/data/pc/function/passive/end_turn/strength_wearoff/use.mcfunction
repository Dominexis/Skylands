
# effect
execute store result score #value pc.main run data get entity @s data.effect.strength_wearoff -1
function pc:sys/utils/math/calculate {id:"entity @s data.effect.strength"}

scoreboard players set #value pc.main 0
function pc:sys/utils/math/set {id:"entity @s data.effect.strength_wearoff"}

# fx
playsound minecraft:entity.breeze.deflect master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.25
function pc:fx/text/use {text:[{text:"Strength\nWears Off",color:"gray"}]}