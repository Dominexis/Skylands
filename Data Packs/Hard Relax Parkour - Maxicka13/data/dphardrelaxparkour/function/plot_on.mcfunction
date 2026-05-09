# Add Scoreboard

scoreboard objectives add dphardrelaxparkour.creakings dummy
scoreboard objectives add dphardrelaxparkour.level dummy
scoreboard objectives modify dphardrelaxparkour.level displayname Level
scoreboard objectives add dphardrelaxparkour.playersinpg dummy

# Add Teams and modify them
team add dphardrelaxparkour.player Player
team modify dphardrelaxparkour.player color green

team add dphardrelaxparkour.lost Lost
team modify dphardrelaxparkour.lost color black