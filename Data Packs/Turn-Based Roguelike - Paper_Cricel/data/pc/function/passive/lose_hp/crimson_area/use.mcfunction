
# effect
scoreboard players set #value pc.main 50
function pc:passive/shield/use

scoreboard players set #value pc.main 5
function pc:passive/effect/apply {effect:"regeneration"}

# fx
function pc:fx/text/use {text:[{text:"Crimson Area",color:"#b92d2b"}]}
playsound minecraft:entity.zombie.infect master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2
playsound minecraft:block.stem.break master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0