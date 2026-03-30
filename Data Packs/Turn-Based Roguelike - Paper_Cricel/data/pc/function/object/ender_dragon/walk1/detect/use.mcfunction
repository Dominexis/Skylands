
execute store success score #left pc.main run function pc:object/ender_dragon/walk1/detect/left
execute store success score #right pc.main run function pc:object/ender_dragon/walk1/detect/right

execute if score #left pc.main matches 0 if score #right pc.main matches 0 run return 1
execute if score #left pc.main matches 1 if score #right pc.main matches 0 run return 2
execute if score #left pc.main matches 0 if score #right pc.main matches 1 run return 3
return run random value 2..3