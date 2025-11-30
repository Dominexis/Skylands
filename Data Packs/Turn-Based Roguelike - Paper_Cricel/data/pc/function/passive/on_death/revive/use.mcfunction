
# effect
function pc:sys/object/intent/use

scoreboard players set #undyne pc.main 1
scoreboard players operation @s pc.hp = @s pc.hpmax

# Round
scoreboard players set #value pc.main -1
function pc:sys/utils/math/calculate {id:"entity @s data.effect.revive"}

# fx
function pc:fx/text/use {text:[{text:"Revive",color:"#e7c65d"}]}
particle minecraft:firework ~ ~ ~ 0 0 0 0.1 10 force
playsound minecraft:item.shield.block master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.5 1
playsound minecraft:block.beacon.power_select master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.5 1
playsound minecraft:entity.allay.death master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2

particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~1.0 ~ ~0.0 1.0 1 0.0 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~0.966 ~ ~0.259 0.966 1 0.259 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~0.866 ~ ~0.5 0.866 1 0.5 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~0.707 ~ ~0.707 0.707 1 0.707 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~0.5 ~ ~0.866 0.5 1 0.866 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~0.259 ~ ~0.966 0.259 1 0.966 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~0.0 ~ ~1.0 0.0 1 1.0 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~-0.259 ~ ~0.966 -0.259 1 0.966 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~-0.5 ~ ~0.866 -0.5 1 0.866 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~-0.707 ~ ~0.707 -0.707 1 0.707 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~-0.866 ~ ~0.5 -0.866 1 0.5 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~-0.966 ~ ~0.259 -0.966 1 0.259 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~-1.0 ~ ~0.0 -1.0 1 0.0 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~-0.966 ~ ~-0.259 -0.966 1 -0.259 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~-0.866 ~ ~-0.5 -0.866 1 -0.5 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~-0.707 ~ ~-0.707 -0.707 1 -0.707 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~-0.5 ~ ~-0.866 -0.5 1 -0.866 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~-0.259 ~ ~-0.966 -0.259 1 -0.966 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~-0.0 ~ ~-1.0 -0.0 1 -1.0 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~0.259 ~ ~-0.966 0.259 1 -0.966 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~0.5 ~ ~-0.866 0.5 1 -0.866 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~0.707 ~ ~-0.707 0.707 1 -0.707 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~0.866 ~ ~-0.5 0.866 1 -0.5 0.25 0 force
particle minecraft:item{item:{id:"minecraft:white_concrete"}} ~0.966 ~ ~-0.259 0.966 1 -0.259 0.25 0 force