
# effect
scoreboard players set #value pc.main 0
function pc:sys/utils/math/set {id:'entity @s data.effect.weakness'}

# fx
function pc:fx/text/use {text:{text:"Swagger",color:"#473cbf"}}
particle minecraft:firework ~ ~ ~ 0.2 0.4 0.2 0.1 5 force
playsound minecraft:item.trident.return master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2