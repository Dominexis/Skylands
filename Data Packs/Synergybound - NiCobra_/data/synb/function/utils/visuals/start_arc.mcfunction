# As/At : [depends]
# Args :
#   - particle_arc_target (tag arg)
#   - particle (score)
##

scoreboard players set #rec_security synb.Tmp.Arg 0
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.arg.particle_arc_target] facing entity @s feet run function synb:utils/visuals/_rec_arc