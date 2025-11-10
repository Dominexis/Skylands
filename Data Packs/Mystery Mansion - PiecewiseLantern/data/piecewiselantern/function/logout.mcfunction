# Runs as and at a player when they log out of your plot. Use this to remove tags from your player.
# Their items and effects will be removed automatically by the Core. Don’t do anything here which relies on the player’s location, because they could be anywhere.

# Technically, this IS based on player location but it selects the whole box for the single player
function piecewiselantern:stoploops

scoreboard players set hasplayer piecewiselantern.data 0