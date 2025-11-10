execute if score music_lighthouse piecewiselantern.data matches 1.. run scoreboard players remove music_lighthouse piecewiselantern.data 1
execute if score music_lighthouse piecewiselantern.data matches 0 run function piecewiselantern:playloop_lighthouse

execute if score music_lighthouse_voices piecewiselantern.data matches 1.. run scoreboard players remove music_lighthouse_voices piecewiselantern.data 1
execute if score music_lighthouse_voices piecewiselantern.data matches 0 run function piecewiselantern:playloop_lighthouse_voices

execute if entity @p[team=sl.player, x=-1281, y=6, z=-1469, dx=0, dy=0, dz=0] run function piecewiselantern:playloop_lighthouse_voices