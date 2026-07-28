
tag @s remove pc.grid.looking

# fx
function sys:grid/update
function sys:effect/checker/use
execute positioned ~-1.5 ~-100 ~-1.5 run data merge entity @e[tag=pc.select,type=item_display,dx=2,dy=200,dz=2,limit=1] {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,1.0f,2.0f],translation:[0.0f,-1.25f,0.0f]},start_interpolation:0,interpolation_duration:5}