# As : [depends]
# At : particle_arc_target
# Args :
#   - particle (score)
##

scoreboard players add #rec_security synb.Tmp.Arg 1

execute if score #particle synb.Tmp.Arg matches 0 run particle minecraft:electric_spark ~ ~1 ~ 0 0 0 0.1 1
execute if score #particle synb.Tmp.Arg matches 1 run particle minecraft:dust{color:[0.5,0.1,1.0],scale:0.4} ~ ~ ~ 0 0 0 1.0 1
execute if score #particle synb.Tmp.Arg matches 2 run particle minecraft:dust{color:[0.2,0.2,0.2],scale:0.8} ~ ~1 ~ 0 0 0 1.0 2

execute unless entity @s[distance=..0.35] if score #rec_security synb.Tmp.Arg matches ..500 positioned ^ ^ ^0.3 run function synb:utils/visuals/_rec_arc