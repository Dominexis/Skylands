## This function runs when the plot turns on

#make sure everything is setup and cleared

#summon entities at correct locations

scoreboard objectives add erictho.checkpoint dummy
scoreboard objectives add erictho.endloop dummy
scoreboard objectives add erictho.damage dummy
scoreboard objectives add erictho.rng dummy
scoreboard objectives add erictho.objective dummy
scoreboard objectives add erictho.dialogue trigger

scoreboard players set erictho.player erictho.endloop 0