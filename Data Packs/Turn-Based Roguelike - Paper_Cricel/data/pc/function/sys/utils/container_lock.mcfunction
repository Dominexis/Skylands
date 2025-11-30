
# effect
execute if entity @s[distance=..0.1] run scoreboard players set #count pc.main 0

# Loop
execute store success score #pass pc.main anchored eyes if block ^ ^ ^ #pc:transparent
execute if score #count pc.main matches 60.. run return fail

# Fail
execute if score #pass pc.main matches 0 run playsound minecraft:block.wooden_trapdoor.close master @s ~ ~ ~ 1 0 1
execute if score #pass pc.main matches 0 anchored eyes run data modify block ^ ^ ^ lock set value {count:1}

# Pass
execute if score #pass pc.main matches 1 anchored eyes run particle minecraft:end_rod ^ ^ ^ 0 0 0 0 0 force
execute if score #pass pc.main matches 1 positioned ^ ^ ^1 run function pc:sys/utils/container_lock
scoreboard players add #count pc.main 1