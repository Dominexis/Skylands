
# effect
data modify storage pc:temp repair set value {item:"keen_insight",value:-1,is_max:1b}
function pc:sys/item/durability/use

scoreboard players set #value pc.main 1
function pc:passive/effect/apply {effect:"strength"}

execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid.now] at @s run function pc:item/skill/keen_insight/2

# fx
playsound minecraft:block.piston.contract master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.5
playsound minecraft:entity.parrot.ambient master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0