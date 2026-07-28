## This function runs when the plot turns off

# Game & Lobby
function sys:lobby/end/clear
execute as @e[tag=pc.lobby] run function sys:void
data remove storage pc:settings map
data remove storage pc:settings gameplay
data remove storage pc:settings lang
data remove storage pc:utils data
data remove storage pc:utils local_thread
function sys:lang/reset

team remove pc.red
team remove pc.yellow
team remove pc.utils.button
team remove pc.utils.button.click
kill 20060423-0-0-0-0
kill 20060423-0-0-0-1
kill 20060423-0-0-1-1
kill 20060423-0-0-0-2

# Player
execute as @a[predicate=sys:player/inplot] at @s run function pc:logout

# say Plot Off