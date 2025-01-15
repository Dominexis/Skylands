# Log player out of their current plot
execute if entity @s[predicate=sl:player] run function sl:plot/logout

# Put player onto spectator team
team join sl.spectator @s[team=!sl.spectator]

# Reset title
title @s times 10 70 30
title @s title ""
title @s subtitle ""
title @s actionbar ""

# Get position
function sl:api/get_pos

# Determine if player is in lobby
execute store result score #in_lobby sl.value positioned -64.0 0 -64.0 if entity @s[dx=127,dy=10,dz=127]

# Run function based on direction of warp
execute if score #in_lobby sl.value matches 0 run function sl:plot/warp/to_lobby
execute if score #in_lobby sl.value matches 1 run function sl:plot/warp/to_plot

# Teleport to coordinates
execute store result storage sl:data macro.x int 1 run scoreboard players get #x sl.value
execute store result storage sl:data macro.y int 1 run scoreboard players get #y sl.value
execute store result storage sl:data macro.z int 1 run scoreboard players get #z sl.value
function sl:generic/teleport with storage sl:data macro