# Toggle night vision score
scoreboard players add @s sl.night_vision 1
execute if score @s sl.night_vision matches 2.. run scoreboard players set @s sl.night_vision 0

# Remove night vision from spectators
effect clear @s[scores={sl.night_vision=0},team=sl.spectator] minecraft:night_vision

# Send message to player
tellraw @s[scores={sl.night_vision=0}] {"text":"Night vision disabled","color":"gold","type":"text"}
tellraw @s[scores={sl.night_vision=1}] {"text":"Night vision enabled","color":"gold","type":"text"}

# Reset trigger
scoreboard players set @s night_vision 0