
# effect
summon minecraft:item_display ~ ~0.5 ~ {Tags:["pc.select"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,1.0f,2.0f],translation:[0.0f,-1.25f,0.0f]},teleport_duration:1}

# Range
function pc:sys/grid/state/color

# fx
playsound minecraft:block.deepslate.place master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.5 2