
# effect
scoreboard players set #value pc.main 1
function pc:passive/effect/apply {effect:strength}

# fx
function pc:fx/text/use {text:[{text:"Enraged",color:"#e63232"}]}
playsound minecraft:entity.enderman.scream master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ^ ^ ^ 0.5 0.75
particle minecraft:lava ^ ^ ^ 0.5 0 0.5 0 30 force