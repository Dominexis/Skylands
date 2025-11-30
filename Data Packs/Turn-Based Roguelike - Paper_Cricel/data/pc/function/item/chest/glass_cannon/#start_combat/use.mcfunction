# exe : object

# effect
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.effect.glass_cannon"}

# fx
function pc:fx/text/use {text:[{text:"Glass Cannon",color:"#94bacd"}]}
particle minecraft:witch ~ ~ ~ 0.3 0.3 0.3 1 20 force
playsound minecraft:block.respawn_anchor.deplete master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2