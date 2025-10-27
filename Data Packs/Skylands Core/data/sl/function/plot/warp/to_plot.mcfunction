# Convert coordinates from lobby to plot
scoreboard players operation #x sl.value *= #512 sl.value
scoreboard players operation #z sl.value *= #512 sl.value
scoreboard players add #x sl.value 256
scoreboard players add #z sl.value 256

execute if block ~-1 0 ~ #sl:minimap_void unless block ~01 0 ~ #sl:minimap_void run scoreboard players add #x sl.value 256
execute if block ~01 0 ~ #sl:minimap_void unless block ~-1 0 ~ #sl:minimap_void run scoreboard players remove #x sl.value 256
execute if block ~ 0 ~-1 #sl:minimap_void unless block ~ 0 ~01 #sl:minimap_void run scoreboard players add #z sl.value 256
execute if block ~ 0 ~01 #sl:minimap_void unless block ~ 0 ~-1 #sl:minimap_void run scoreboard players remove #z sl.value 256

scoreboard players set #y sl.value 65

tellraw @s {text:"You've been warped to the plot",color:"green",type:"text"}