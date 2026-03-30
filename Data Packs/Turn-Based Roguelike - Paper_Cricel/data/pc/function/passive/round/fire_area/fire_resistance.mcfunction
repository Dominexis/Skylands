
# effect
scoreboard players operation #damage pc.main *= #3 sl.value
scoreboard players operation #damage pc.main /= #4 sl.value

# fx
function pc:fx/text/use {text:[{text:"Fire Resistance",color:"#d15d24"}]}
playsound minecraft:block.brewing_stand.brew master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.25
playsound minecraft:entity.blaze.hurt master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.25 0