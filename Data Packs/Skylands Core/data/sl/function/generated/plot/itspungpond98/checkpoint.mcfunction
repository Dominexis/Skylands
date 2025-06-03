# Run checkpoint function
scoreboard players set #success sl.value -1
execute store success score #success sl.value run function itspungpond98:checkpoint

# Send message if the function doesn't exist
execute if score #success sl.value matches 0 run playsound minecraft:entity.experience_orb.pickup master @s
execute if score #success sl.value matches 0 run tellraw @s {"text":"Checkpoint","color":"green"}