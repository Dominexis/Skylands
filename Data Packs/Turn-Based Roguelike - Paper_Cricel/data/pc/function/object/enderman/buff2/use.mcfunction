
# effect
tag @s add pc.enderman.interphase
scoreboard players set #value pc.main 5
function pc:passive/effect/apply {effect:"robust"}

scoreboard players set #value pc.main 4
function pc:passive/effect/apply {effect:"strength"}

scoreboard players set #value pc.main 2
function pc:passive/effect/apply {effect:'critical_hit'}

# fx
particle dust_color_transition{from_color:[0.733,0.431,1.000],scale:2,to_color:[0.161,0.149,0.471]} ~ ~1.5 ~ 0.4 0.8 0.4 1 100 force
playsound minecraft:entity.enderman.scream master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1 1
playsound minecraft:entity.breeze.charge master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.75 1