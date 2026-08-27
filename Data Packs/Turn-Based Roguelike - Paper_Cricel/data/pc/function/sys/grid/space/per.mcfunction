
summon minecraft:item_display ~ ~0.5 ~ {Tags:["pc.select"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,1.0f,2.0f],translation:[0.0f,-1.25f,0.0f]},teleport_duration:1}

# Range
function pc:sys/grid/update

# fx
playsound minecraft:block.deepslate.place master @a ~ ~1024 ~ 0 2 0.5