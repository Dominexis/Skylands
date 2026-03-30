
# Pushed if unmoving for 5 seconds
scoreboard players add @s[predicate=sanct:mob/wolf/unmoving] sanct.respawn_timer 1
tp @s[scores={sanct.respawn_timer=5..}] ^ ^ ^1
scoreboard players set @s[scores={sanct.respawn_timer=5..}] sanct.respawn_timer -5
scoreboard players set @s[predicate=!sanct:mob/wolf/unmoving] sanct.respawn_timer 0

# Return if still pathing to target
execute on target unless entity @s[distance=..4] run return 1

# Change to second target after reaching first target
execute if entity @s[tag=!sanct.destination_b] run return run data modify entity @s {} merge from storage sanct:storage root.goal_path_destination[1]

# Disappear after reaching second target
effect give @s minecraft:invisibility 1 0 true
tp @s -2310 -128 2307
kill @s