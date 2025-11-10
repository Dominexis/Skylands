# Runs when the Core turns your plot on. Use this to create scoreboard objectives, spawn necessary entities, and other things to prepare your plot.

scoreboard objectives add piecewiselantern.data dummy

scoreboard players set hasplayer piecewiselantern.data 0

scoreboard players set resettingmap piecewiselantern.data 1

scoreboard players set bulbtoggle piecewiselantern.data 0

scoreboard players set lighttiles piecewiselantern.data 0

scoreboard players set music_lighthouse piecewiselantern.data -1
scoreboard players set music_lighthouse_voices piecewiselantern.data -1

function piecewiselantern:reset_map