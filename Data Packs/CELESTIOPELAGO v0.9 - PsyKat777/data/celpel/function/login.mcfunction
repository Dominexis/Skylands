## This function runs as and at a player when they log into the plot

# Ascertains which player is targeted, so that they draw the scores from others, not themselves
tag @s add celpel.targeted

# Sets the incoming player's scores to everyone elses scores (this will hopefully do nothing if they are the first player)
scoreboard players operation @s celpel.blackhole_particles = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.blackhole_particles
scoreboard players operation @s celpel.blow_played = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.blow_played
scoreboard players operation @s celpel.boots_distributed = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.boots_distributed
scoreboard players operation @s celpel.boots_requested = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.boots_requested
scoreboard players operation @s celpel.bow_shot = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.bow_shot
scoreboard players operation @s celpel.bulb_1 = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.bulb_1
scoreboard players operation @s celpel.bulb_2 = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.bulb_2
scoreboard players operation @s celpel.bulb_3 = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.bulb_3
scoreboard players operation @s celpel.bulbs_lit = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.bulbs_lit
scoreboard players operation @s celpel.door_opened = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.door_opened
scoreboard players operation @s celpel.end_reached = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.end_reached
scoreboard players operation @s celpel.fan_active = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.fan_active
scoreboard players operation @s celpel.lever_bridge = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.lever_bridge
scoreboard players operation @s celpel.lever_telepad = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.lever_telepad
scoreboard players operation @s celpel.lever_pulley = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.lever_pulley
scoreboard players operation @s celpel.levers_active = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.levers_active
scoreboard players operation @s celpel.pillar_intro = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.pillar_intro
scoreboard players operation @s celpel.pillar_upper = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.pillar_upper
scoreboard players operation @s celpel.pillar_lower = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.pillar_lower
scoreboard players operation @s celpel.pillar_trio = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.pillar_trio
scoreboard players operation @s celpel.pillar_roof = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.pillar_roof
scoreboard players operation @s celpel.pillars_completed = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.pillars_completed
scoreboard players operation @s celpel.recovering_effects = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.recovering_effects
scoreboard players operation @s celpel.requesting_particles = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.requesting_particles
scoreboard players operation @s celpel.string_active = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.string_active
scoreboard players operation @s celpel.string_timer = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.string_timer
scoreboard players operation @s celpel.targets_shot = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.targets_shot
scoreboard players operation @s celpel.vaporizing_particles = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.vaporizing_particles
scoreboard players operation @s celpel.wires_placed = @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player,tag=!celpel.targeted] celpel.wires_placed

# Removes the tag
tag @s remove celpel.targeted

# Gives the player leather boots if everyone else has them
execute if score @s celpel.boots_distributed matches 1 run give @s leather_boots[dyed_color=8991416,custom_name=[{"text":"Telepad Boots","italic":false,"color":"#9f00ff"}],lore=[[{"text":"Some high-tech boots invented by the Republic","italic":false}],[{"text":"of Zygartia. Stand on the orange lamp of a","italic":false}],[{"text":"telepad while wearing them to teleport to","italic":false}],[{"text":"another telepad.","italic":false}]],unbreakable={}]