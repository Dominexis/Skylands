## This function runs when the plot turns off

#reset and clear everything
#kill entities
kill @e[type=interaction]

#remove tags 

#to stop loops when is 1
#each section have their own number to reset? need to think through
scoreboard players set player erictho_endloop 1


#reset scores
scoreboard players set player erictho_checkpoint 0

scoreboard players set bile1 erictho_objective 0
scoreboard players set bile2 erictho_objective 0
scoreboard players set bile3 erictho_objective 0
scoreboard players set bile4 erictho_objective 0
scoreboard players set bile5 erictho_objective 0
scoreboard players set bile6 erictho_objective 0

#to reset loops so theyre active
scoreboard players set player erictho_endloop 0

scoreboard players set player erictho_checkpoint 0

scoreboard players set @a[team=erictho_player] erictho_checkpoint 0

#remove team
team remove erictho_player