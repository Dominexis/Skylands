clear @p[x=-1280,y=-5,z=-1295,dx=0,dy=0,dz=0,team=sl.player] minecraft:pink_dye[minecraft:custom_name="Pink Necklace"]
setblock -1279 -5 -1295 minecraft:iron_door[open=true]
scoreboard players set lighttiles piecewiselantern.data 1
playsound piecewiselantern:sfx.puzzle_complete master @p[x=-1280,y=-5,z=-1295,dx=0,dy=0,dz=0,team=sl.player] -1280 -5 -1295 1 1 0