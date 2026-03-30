# As/At : [depends]
##

# Note : tmp cleared not before but after
scoreboard players add #rec_circle synb.Tmp.Expr 1
particle minecraft:dust{color:[0.1,0.1,0.1],scale:0.8} ~ ~ ~ 0 0 0 0.01 1
particle minecraft:dust{color:[0.1,0.1,0.1],scale:0.8} ~ ~2.5 ~ 0 0 0 0.01 1
execute if score #rec_circle synb.Tmp.Expr matches ..80 facing entity @s feet positioned ^5.2 ^ ^2 run function synb:utils/visuals/draw_circle_black
scoreboard players reset #rec_circle synb.Tmp.Expr