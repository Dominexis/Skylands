
execute if score #range pc.main matches 200.. run return fail
particle minecraft:dust_color_transition{from_color:[0.196, 0.800, 0.518],to_color:[0.639, 0.945, 0.549],scale:1.5f} ~ ~ ~ 0.1 0.1 0.1 0 2 force

scoreboard players add #range pc.main 1
scoreboard players operation #temp pc.main = #range pc.main
scoreboard players operation #temp pc.main %= #60 sl.value

execute if score #temp pc.main matches 0 run particle heart ^0.0 ^1.0 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 4 run particle heart ^0.407 ^0.914 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 8 run particle heart ^0.743 ^0.669 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 12 run particle heart ^0.951 ^0.309 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 16 run particle heart ^0.995 ^-0.105 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 20 run particle heart ^0.866 ^-0.5 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 24 run particle heart ^0.588 ^-0.809 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 28 run particle heart ^0.208 ^-0.978 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 32 run particle heart ^-0.208 ^-0.978 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 36 run particle heart ^-0.588 ^-0.809 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 40 run particle heart ^-0.866 ^-0.5 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 44 run particle heart ^-0.995 ^-0.105 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 48 run particle heart ^-0.951 ^0.309 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 52 run particle heart ^-0.743 ^0.669 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 56 run particle heart ^-0.407 ^0.914 ^ 0 0 0 0 0 force

execute unless entity @e[tag=pc.atker,type=minecraft:end_crystal,distance=..0.25,limit=1] positioned ^ ^ ^0.25 run function pc:entity/ender_dragon/crystal/buff2/beam