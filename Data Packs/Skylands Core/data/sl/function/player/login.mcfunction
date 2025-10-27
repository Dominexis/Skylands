# Sync ticks
scoreboard players operation @s sl.ticks = #ticks sl.value

# Get UUID
data modify storage sl:data tag.UUID set from entity @s UUID
execute store result score @s sl.uuid_0 run data get storage sl:data tag.UUID[0]
execute store result score @s sl.uuid_1 run data get storage sl:data tag.UUID[1]
execute store result score @s sl.uuid_2 run data get storage sl:data tag.UUID[2]
execute store result score @s sl.uuid_3 run data get storage sl:data tag.UUID[3]

# Assign unique ID
execute store result score #initial_login sl.value unless score @s sl.id = @s sl.id
execute unless score @s sl.id = @s sl.id store result score @s sl.id run scoreboard players add #global sl.id 1

# Set gamemode
team join sl.player @s[team=!sl.spectator]
execute if score #dev_mode sl.value matches 0 run gamemode adventure @s[team=!sl.spectator]
execute if score #dev_mode sl.value matches 1 if score #initial_login sl.value matches 1 run gamemode adventure @s[team=!sl.spectator]

# Send player to lobby
scoreboard players set #send_to_lobby sl.value 0
execute if score #initial_login sl.value matches 1 run scoreboard players set #send_to_lobby sl.value 1
execute if score #initial_login sl.value matches 0 if score #dev_mode sl.value matches 0 if score @s sl.plot = #lobby_plot sl.value if entity @s[team=!sl.spectator] run scoreboard players set #send_to_lobby sl.value 1
execute if score #send_to_lobby sl.value matches 0 if score @s sl.plot = #lobby_plot sl.value run function sl:player/title
execute if score #send_to_lobby sl.value matches 1 run function sl:player/lobby

# Rejoin player to plot they were on previously
execute unless score @s sl.plot = #lobby_plot sl.value run function sl:plot/rejoin

# Send tellraws to player
tellraw @s [{text:"Welcome to ",color:"white",type:"text"},{text:"Skylands",color:"aqua",bold:1b,type:"text"}]
tellraw @s[team=!sl.spectator] [{text:"Use ",color:"gray",type:"text"},{text:"/trigger spectate",color:"white",type:"text"},{text:" to spectate the map",color:"gray",type:"text"}]
execute unless score @s sl.plot = #lobby_plot sl.value run tellraw @s[team=!sl.spectator] [{text:"Use ",color:"gray",type:"text"},{text:"/trigger lobby",color:"white",type:"text"},{text:" to return to the lobby",color:"gray",type:"text"}]
execute unless score @s sl.plot = #lobby_plot sl.value run tellraw @s[team=!sl.spectator] [{text:"Use ",color:"gray",type:"text"},{text:"/trigger checkpoint",color:"white",type:"text"},{text:" to go to the previous checkpoint",color:"gray",type:"text"}]
tellraw @s[team=sl.spectator] [{text:"Use ",color:"gray",type:"text"},{text:"/trigger lobby",color:"white",type:"text"},{text:" to return to the lobby",color:"gray",type:"text"}]
tellraw @s[team=sl.spectator] [{text:"Use ",color:"gray",type:"text"},{text:"/trigger play",color:"white",type:"text"},{text:" to play the plot you are spectating",color:"gray",type:"text"}]