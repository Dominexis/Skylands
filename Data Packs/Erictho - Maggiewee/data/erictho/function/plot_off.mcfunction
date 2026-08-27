## This function runs when the plot turns off

#reset and clear everything
#kill entities
kill @e[type=interaction,distance=..100]


#to stop loops when is 1
#each section have their own number to reset? need to think through
scoreboard players set erictho.player erictho.endloop 1
#clear scheduled functions
schedule clear erictho:part1/loop
schedule clear erictho:part2/loop
#to reset loops so theyre active
scoreboard players set erictho.player erictho.endloop 0
scoreboard players set erictho.player erictho.checkpoint 0

#reset scores
scoreboard players set erictho.player erictho.checkpoint 0

scoreboard players set erictho.bile1 erictho.objective 0
scoreboard players set erictho.bile2 erictho.objective 0
scoreboard players set erictho.bile3 erictho.objective 0
scoreboard players set erictho.bile4 erictho.objective 0
scoreboard players set erictho.bile5 erictho.objective 0
scoreboard players set erictho.bile6 erictho.objective 0