
# effect
function pc:sys/player/owner/find

# Energy
scoreboard players add @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.passive,predicate=sl:player] pc.ep 2

# Energy Cost
data modify storage pc:temp desc set value {category:"move",energy:1}
execute as @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.passive,predicate=sl:player] at @s run function pc:sys/item/refresh/use

# Shield
scoreboard players operation #value pc.main = #energy pc.main
scoreboard players operation #value pc.main *= #10 sl.value
function pc:passive/shield/use

function pc:sys/player/owner/clear

# fx
playsound minecraft:block.beacon.power_select master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2
playsound minecraft:entity.armadillo.hurt_reduced master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0
particle minecraft:dust{color:[0.243,0.871,0.941],scale:1.0f} ~ ~ ~ 0.3 0.4 0.3 0 20 force