
tp @s ~0.5 ~ ~0.5
execute store result entity @s Pos[1] double 0.1 run data get entity @s data.sys.motion 10
data remove entity @s data.sys.motion