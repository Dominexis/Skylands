#  Runs when the Core turns your plot on. Use this to create scoreboard objectives, spawn necessary entities, and other things to prepare your plot.

## SCOREBOARD INITIALIZATION
scoreboard objectives add resetlevel trigger
scoreboard objectives add curr_level dummy
scoreboard objectives add attempts dummy
scoreboard objectives add numCorrect dummy
scoreboard objectives add progress dummy

## MOB TEAM INIT
team add invis invis
team modify invis nametagVisibility never

## LOCATION MARKERS
summon marker 0 64 0 {Tags:["CENTER"]}
execute at @n[tag=CENTER] run summon marker ~-40 ~0 ~-71 {Tags:["SPAWN","ISLE0"]}
execute at @n[tag=CENTER] run summon marker ~59 ~0 ~-89 {Tags:["ISLE1"]}
execute at @n[tag=CENTER] run summon marker ~-83 ~0 ~-6 {Tags:["ISLE2"]}
execute at @n[tag=CENTER] run summon marker ~81 ~0 ~53 {Tags:["ISLE3"]}
execute at @n[tag=CENTER] run summon marker ~-79 ~0 ~78 {Tags:["ISLE4"]}
execute at @n[tag=CENTER] run summon marker ~14.5 ~0 ~97.5 {Tags:["ISLE5"]}
execute at @n[tag=CENTER] run summon marker ~83 ~0 ~-16 {Tags:["ISLE6"]}

## CHECKPOINT MARKER
execute at @n[tag=CENTER] run summon armor_stand ~0 ~1 ~0 {Invisible:1b, PersistenceRequired:1b, Invulnerable:1b, Tags:["checkpoint"], NoGravity:1b}

## LEVEL ORIGINS
function epc:origin

## ISLE JUMP POINTS
execute at @n[tag=CENTER] run summon marker ~-14 ~ ~-14 {Tags:["I0","ENTER"]}
execute at @n[tag=SPAWN] run summon marker ~ ~ ~12 {Tags:["I0","LEAVE"]}
execute at @n[tag=CENTER] run summon marker ~14 ~ ~-14 {Tags:["I1","ENTER"]}
execute at @n[tag=ISLE1] run summon marker ~-20 ~-1 ~21 {Tags:["I1","LEAVE"]}
execute at @n[tag=CENTER] run summon marker ~-20 ~ ~ {Tags:["I2","ENTER"]}
execute at @n[tag=ISLE2] run summon marker ~14 ~-1 ~3 {Tags:["I2","LEAVE"]}
execute at @n[tag=CENTER] run summon marker ~14 ~ ~14 {Tags:["I3","ENTER"]}
execute at @n[tag=ISLE3] run summon marker ~-7 ~-1 ~-15 {Tags:["I3","LEAVE"]}
execute at @n[tag=CENTER] run summon marker ~-14 ~ ~14 {Tags:["I4","ENTER"]}
execute at @n[tag=ISLE4] run summon marker ~17 ~-1 ~-21 {Tags:["I4","LEAVE"]}
execute at @n[tag=CENTER] run summon marker ~ ~ ~20 {Tags:["I5","ENTER"]}
execute at @n[tag=ISLE5] run summon marker ~-4.5 ~-1 ~-21.5 {Tags:["I5","LEAVE"]}
execute at @n[tag=CENTER] run summon marker ~20 ~ ~ {Tags:["I6","ENTER"]}
execute at @n[tag=ISLE6] run summon marker ~-14 ~ ~ {Tags:["I6","LEAVE"]}

execute at @e[tag=ENTER] align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["pedestal"],block_state:{Name:"gold_block"}}
execute at @e[tag=I0,tag=LEAVE] align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["pedestal"],block_state:{Name:"gold_block"}}

## BEACONS
execute at @n[tag=I0,tag=LEAVE] run summon marker ~ ~-3 ~ {Tags:["B0","BEACON"]}
execute at @n[tag=I1,tag=ENTER] run summon marker ~ ~-3 ~ {Tags:["B1","BEACON"]}
execute at @n[tag=ISLE1] run summon marker ~13 ~-4 ~-1 {Tags:["B2","BEACON"]}
execute at @n[tag=I6,tag=ENTER] run summon marker ~ ~-3 ~ {Tags:["B3a","BEACON"]}
execute at @n[tag=I2,tag=ENTER] run summon marker ~ ~-3 ~ {Tags:["B3b","BEACON"]}
execute at @n[tag=I3,tag=ENTER] run summon marker ~ ~-3 ~ {Tags:["B4","BEACON"]}
execute at @n[tag=I4,tag=ENTER] run summon marker ~ ~-3 ~ {Tags:["B5","BEACON"]}
execute at @n[tag=ISLE4] run summon marker ~17 ~-17 ~-6 {Tags:["B6","BEACON"]}

## HINTS
data merge storage minecraft:hint {l0:[0,0,0,0,1,1],l1:[0,0,0,0,0,1],l2:[0,0,0,0,0,1],l3:[0,0,0,0,1,1],l4:[0,0,0,0,0,0],l5:[0,0,0,0,0,0],l6:[0,0,0,0,0,0],l7:[0,0,0,0,0,0],l8:[0,0,0,0,0,0],l9:[0,0,0,0,0,0]}

## PROGRESS BARS
function epc:progress_bar {name: "overall", display: "Sound Matching", color: "pink", max: 9}
function epc:progress_bar {name: "isle1", display: "Villager Island", color: "white", max: 14}
function epc:progress_bar {name: "isle2", display: "Glacial Ridge", color: "blue", max: 6}
function epc:progress_bar {name: "isle3", display: "Oasis", color: "yellow", max: 6}
function epc:progress_bar {name: "isle4", display: "Vegetated Island", color: "green", max: 12}
function epc:progress_bar {name: "isle5a", display: "The Nether", color: "red", max: 6}
function epc:progress_bar {name: "isle5b", display: "Warm Ocean", color: "blue", max: 6}

## LAUNCH & RETURN DATA
# SPAWN
data merge storage minecraft:launch {I0:{dx:-0.55d, dy:1.125d, dz:-1.325d, isle:0}}
data merge storage minecraft:return {I0:{dx:0.89d, dy:1.55d, dz:1.315d, isle:-1}}
# VILLAGERS
data merge storage minecraft:launch {I1:{dx:0.725d, dy:1.325d, dz:-1.25d, isle:1}}
data merge storage minecraft:return {I1:{dx:-0.875d, dy:1.55d, dz:1.525d, isle:-1}}
# GLACIER
data merge storage minecraft:launch {I2:{dx:-1.225d, dy:1.325d, dz:-0.175d, isle:2}}
data merge storage minecraft:return {I2:{dx:1.55d, dy:1.55d, dz:0.07d, isle:-1}}
# OASIS
data merge storage minecraft:launch {I3:{dx:1.4, dy:1.4, dz:0.66, isle:3}}
data merge storage minecraft:return {I3:{dx:-1.66d, dy:1.55d, dz:-0.85d, isle:-1}}
# VEGETATED
data merge storage minecraft:launch {I4:{dx:-1.2d, dy:1.175d, dz:1.2d, isle:4}}
data merge storage minecraft:return {I4:{dx:1.39d, dy:1.55d, dz:-1.275d, isle:-1}}
# NETHER // OCEAN
data merge storage minecraft:launch {I5:{dx:0.15, dy:1.35, dz:1.375, isle:5}}
data merge storage minecraft:return {I5:{dx:-0.225d, dy:1.55d, dz:-1.7d, isle:-1}}
# HINTS
data merge storage minecraft:launch {I6:{dx:1.375d, dy:1.125d, dz:-0.275d, isle:6}}
data merge storage minecraft:return {I6:{dx:-1.54d, dy:1.55d, dz:0.36d, isle:-1}}