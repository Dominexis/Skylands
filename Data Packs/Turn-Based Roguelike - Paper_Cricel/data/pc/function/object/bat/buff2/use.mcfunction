
# effect
scoreboard players set #value pc.main 1
function pc:passive/effect/apply {effect:'strength'}

scoreboard players set #value pc.main 150
function pc:passive/shield/use

data modify entity @s data.brain.buff2 set value 4

# fx
function pc:fx/buff/use
playsound minecraft:entity.zombie.infect master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0 1