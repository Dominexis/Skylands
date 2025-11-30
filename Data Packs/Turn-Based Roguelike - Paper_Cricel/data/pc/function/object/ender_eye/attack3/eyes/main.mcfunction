
# effect
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches 2 run data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.035f,0.05f,0.0f]},start_interpolation:0,interpolation_duration:15}
scoreboard players operation #temp pc.main = @s pc.duration
scoreboard players operation #temp pc.main %= #2 sl.value
execute if score @s pc.duration matches ..16 run function pc:object/ender_eye/attack3/eyes/emerge/main

execute if score @s pc.duration matches 17 run data merge entity @s {transformation:{left_rotation:[0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,2.0f,1.0f],translation:[0.035f,0.0f,0.05f]},teleport_duration:2,start_interpolation:0,interpolation_duration:10}
execute if score @s pc.duration matches 18..27 run tp @s ^ ^ ^-0.1
execute if score @s pc.duration matches 30 run function pc:object/ender_eye/attack3/eyes/3
execute if score @s pc.duration matches 32.. run kill @s

# fx