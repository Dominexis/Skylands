
# effect
function pc:sys/grid/select/mob3x3

scoreboard players operation #damage pc.main = #db pc.main
scoreboard players operation #damage pc.main *= #20 sl.value
scoreboard players add #damage pc.main 50
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
particle minecraft:totem_of_undying ^ ^1 ^ 0 0 0 0.5 30 force
playsound minecraft:entity.dolphin.death master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0
playsound minecraft:entity.player.attack.knockback master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2