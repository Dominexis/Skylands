
scoreboard players add @s pc.duration 1

tp @s ^ ^ ^1
execute if function pc:sys/entity/hitbox/ally run return run function pc:entity/enderman/walk1/fx/hit

execute if score @s pc.duration matches 30.. run function pc:entity/enderman/walk1/fx/clear

# fx
scoreboard players operation #mod pc.main = @s pc.duration
scoreboard players operation #mod pc.main %= #20 sl.value

execute if score #mod pc.main matches 1 run data merge entity @s {transformation:{left_rotation: [0.7071068f, 0.7071068f, 0.0f, 0.0f], translation: [0.5f, 0.0f, 0.0f]},interpolation_duration:5}
execute if score #mod pc.main matches 6 run data merge entity @s {transformation:{left_rotation: [1.0f, 0.0f, 0.0f, 0.0f],translation: [0.0f, -0.5f, 0.0f]},interpolation_duration:5}
execute if score #mod pc.main matches 11 run data merge entity @s {transformation:{left_rotation: [0.7071068f, -0.7071068f, 0.0f, 0.0f], translation: [-0.5f, 0.0f, 0.0f]},interpolation_duration:5}
execute if score #mod pc.main matches 16 run data merge entity @s {transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], translation: [0.0f, 0.5f, 0.0f]},interpolation_duration:5}

execute if score #mod pc.main matches 0 run particle dragon_breath ^0.75 ^0.0 ^ ^500000.0 ^0.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 0 run return run particle dragon_breath ^-0.75 ^-0.0 ^ ^-500000.0 ^-0.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 1 run particle dragon_breath ^0.713 ^0.232 ^ ^475500.0 ^154500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 1 run return run particle dragon_breath ^-0.713 ^-0.232 ^ ^-475500.0 ^-154500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 2 run particle dragon_breath ^0.607 ^0.441 ^ ^404500.0 ^294000.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 2 run return run particle dragon_breath ^-0.607 ^-0.441 ^ ^-404500.0 ^-294000.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 3 run particle dragon_breath ^0.441 ^0.607 ^ ^294000.0 ^404500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 3 run return run particle dragon_breath ^-0.441 ^-0.607 ^ ^-294000.0 ^-404500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 4 run particle dragon_breath ^0.232 ^0.713 ^ ^154500.0 ^475500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 4 run return run particle dragon_breath ^-0.232 ^-0.713 ^ ^-154500.0 ^-475500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 5 run particle dragon_breath ^0.0 ^0.75 ^ ^0.0 ^500000.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 5 run return run particle dragon_breath ^-0.0 ^-0.75 ^ ^-0.0 ^-500000.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 6 run particle dragon_breath ^-0.232 ^0.713 ^ ^-154500.0 ^475500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 6 run return run particle dragon_breath ^0.232 ^-0.713 ^ ^154500.0 ^-475500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 7 run particle dragon_breath ^-0.441 ^0.607 ^ ^-294000.0 ^404500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 7 run return run particle dragon_breath ^0.441 ^-0.607 ^ ^294000.0 ^-404500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 8 run particle dragon_breath ^-0.607 ^0.441 ^ ^-404500.0 ^294000.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 8 run return run particle dragon_breath ^0.607 ^-0.441 ^ ^404500.0 ^-294000.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 9 run particle dragon_breath ^-0.713 ^0.232 ^ ^-475500.0 ^154500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 9 run return run particle dragon_breath ^0.713 ^-0.232 ^ ^475500.0 ^-154500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 10 run particle dragon_breath ^-0.75 ^0.0 ^ ^-500000.0 ^0.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 10 run return run particle dragon_breath ^0.75 ^-0.0 ^ ^500000.0 ^-0.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 11 run particle dragon_breath ^-0.713 ^-0.232 ^ ^-475500.0 ^-154500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 11 run return run particle dragon_breath ^0.713 ^0.232 ^ ^475500.0 ^154500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 12 run particle dragon_breath ^-0.607 ^-0.441 ^ ^-404500.0 ^-294000.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 12 run return run particle dragon_breath ^0.607 ^0.441 ^ ^404500.0 ^294000.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 13 run particle dragon_breath ^-0.441 ^-0.607 ^ ^-294000.0 ^-404500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 13 run return run particle dragon_breath ^0.441 ^0.607 ^ ^294000.0 ^404500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 14 run particle dragon_breath ^-0.232 ^-0.713 ^ ^-154500.0 ^-475500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 14 run return run particle dragon_breath ^0.232 ^0.713 ^ ^154500.0 ^475500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 15 run particle dragon_breath ^-0.0 ^-0.75 ^ ^-0.0 ^-500000.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 15 run return run particle dragon_breath ^0.0 ^0.75 ^ ^0.0 ^500000.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 16 run particle dragon_breath ^0.232 ^-0.713 ^ ^154500.0 ^-475500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 16 run return run particle dragon_breath ^-0.232 ^0.713 ^ ^-154500.0 ^475500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 17 run particle dragon_breath ^0.441 ^-0.607 ^ ^294000.0 ^-404500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 17 run return run particle dragon_breath ^-0.441 ^0.607 ^ ^-294000.0 ^404500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 18 run particle dragon_breath ^0.607 ^-0.441 ^ ^404500.0 ^-294000.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 18 run return run particle dragon_breath ^-0.607 ^0.441 ^ ^-404500.0 ^294000.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 19 run particle dragon_breath ^0.713 ^-0.232 ^ ^475500.0 ^-154500.0 ^-1000000 0.0000002 0 force
execute if score #mod pc.main matches 19 run return run particle dragon_breath ^-0.713 ^0.232 ^ ^-475500.0 ^154500.0 ^-1000000 0.0000002 0 force