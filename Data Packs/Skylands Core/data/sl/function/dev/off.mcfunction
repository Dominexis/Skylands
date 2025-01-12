# Turn dev mode off
scoreboard players set #dev_mode sl.value 0
tellraw @a {"text":"Dev mode is now disabled","color":"red"}
gamerule sendCommandFeedback false