
# effect
scoreboard players operation #damage pc.main = #value pc.main
scoreboard players operation #damage pc.main *= #-1 sl.value
scoreboard players set #value pc.main 0

# fx
playsound minecraft:entity.iron_golem.damage master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.5
particle item{item:"diamond_block"} ~ ~ ~ 0 0 0 0.25 20 force
particle minecraft:effect ~ ~ ~ 0 0 0 0.25 20 force