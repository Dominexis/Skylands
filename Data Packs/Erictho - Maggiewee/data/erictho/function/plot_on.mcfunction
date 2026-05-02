## This function runs when the plot turns on

#make sure everything is setup and cleared

#set team configs
team add erictho_player "Player"

#insta death and no respawn screen
#adventure mode

#summon entities at correct locations

#make sure all players are in right location

#trigger part1 dialogue to start at end

scoreboard objectives add erictho_checkpoint dummy
scoreboard objectives add erictho_endloop dummy
scoreboard objectives add erictho_damage dummy
scoreboard objectives add erictho_rng dummy
scoreboard objectives add erictho_objective dummy
scoreboard objectives add erictho_dialogue trigger

scoreboard players set player erictho_endloop 0