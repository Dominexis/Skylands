execute store result score rand piecewiselantern.data run random value 0..4

#  Left
execute if score rand piecewiselantern.data matches 0 run playsound minecraft:block.chest.open master @p[x=-1310,y=1,z=-1298,dx=59,dy=16,dz=35,team=sl.player] -1272 9 -1281 1 0.5
#  Right
execute if score rand piecewiselantern.data matches 4 run playsound minecraft:block.chest.open master @p[x=-1310,y=1,z=-1298,dx=59,dy=16,dz=35,team=sl.player] -1290 9 -1281 1 0.5

execute if score hasplayer piecewiselantern.data matches 1 run schedule function piecewiselantern:scheduled_ambient_sound 20s replace