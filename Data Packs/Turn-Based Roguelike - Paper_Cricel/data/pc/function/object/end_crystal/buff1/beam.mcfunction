
# effect
scoreboard players add #range pc.main 1

execute as @e[type=end_crystal,tag=pc.sys.atker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run return fail
execute if score #range pc.main matches 100.. run return fail

# fx
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0 20 force
scoreboard players operation #temp pc.main = #range pc.main
scoreboard players operation #temp pc.main %= #15 sl.value
execute if score #temp pc.main matches 0 run particle item{item:purple_concrete} ^0.0 ^1.0 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 1 run particle item{item:purple_concrete} ^0.407 ^0.914 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 2 run particle item{item:purple_concrete} ^0.743 ^0.669 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 3 run particle item{item:purple_concrete} ^0.951 ^0.309 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 4 run particle item{item:purple_concrete} ^0.995 ^-0.105 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 5 run particle item{item:purple_concrete} ^0.866 ^-0.5 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 6 run particle item{item:purple_concrete} ^0.588 ^-0.809 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 7 run particle item{item:purple_concrete} ^0.208 ^-0.978 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 8 run particle item{item:purple_concrete} ^-0.208 ^-0.978 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 9 run particle item{item:purple_concrete} ^-0.588 ^-0.809 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 10 run particle item{item:purple_concrete} ^-0.866 ^-0.5 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 11 run particle item{item:purple_concrete} ^-0.995 ^-0.105 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 12 run particle item{item:purple_concrete} ^-0.951 ^0.309 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 13 run particle item{item:purple_concrete} ^-0.743 ^0.669 ^ 0 0 0 0 0 force
execute if score #temp pc.main matches 14 run particle item{item:purple_concrete} ^-0.407 ^0.914 ^ 0 0 0 0 0 force

execute positioned ^ ^ ^0.25 run function pc:object/end_crystal/buff1/beam