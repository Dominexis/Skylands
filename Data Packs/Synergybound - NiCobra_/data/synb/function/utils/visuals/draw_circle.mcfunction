# As/At : [depends]
##

# Note : tmp cleared not before but after
scoreboard players add #rec_circle synb.Tmp.Expr 1
particle minecraft:dust{color:[0.7,0.3,1.0],scale:1} ~ ~ ~ 0 0 0 0.01 1
execute if score #rec_circle synb.Tmp.Expr matches ..120 facing entity @s feet positioned ^4 ^ ^2 run function synb:utils/visuals/draw_circle
scoreboard players reset #rec_circle synb.Tmp.Expr