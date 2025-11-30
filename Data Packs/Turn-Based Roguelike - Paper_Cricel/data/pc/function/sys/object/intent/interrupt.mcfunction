
# fx
function pc:fx/text/use {text:[{text:"Interrupt",color:"#9295f5"}]}

particle minecraft:firework ~ ~ ~ 0 0 0 0.2 10 force
playsound minecraft:item.shield.block master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.5 1.5
playsound minecraft:entity.dolphin.death master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.25 0.8