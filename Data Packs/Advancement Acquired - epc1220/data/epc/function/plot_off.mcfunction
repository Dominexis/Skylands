# Runs when the Core turns your plot off. Use this to remove any entities spawned while the plot was on.

## REMOVE SCOREBOARDS
scoreboard objectives remove resetlevel
scoreboard objectives remove attempts
scoreboard objectives remove curr_level
scoreboard objectives remove numCorrect
scoreboard objectives remove progress

## REMOVE BOSSBARS
bossbar remove minecraft:overall
bossbar remove minecraft:isle1
bossbar remove minecraft:isle2
bossbar remove minecraft:isle3
bossbar remove minecraft:isle4
bossbar remove minecraft:isle5a
bossbar remove minecraft:isle5b

## RESET ISLANDS
function epc:isle0/reset
function epc:isle1/reset
function epc:isle2/reset
function epc:isle3/reset
function epc:isle4/reset
function epc:isle5/reset
function epc:isle6/reset

## RESET HINT COUNTER
data remove storage minecraft:hints l1
data remove storage minecraft:hints l2
data remove storage minecraft:hints l3
data remove storage minecraft:hints l4
data remove storage minecraft:hints l5
data remove storage minecraft:hints l6
data remove storage minecraft:hints l7
data remove storage minecraft:hints l8
data remove storage minecraft:hints l9

## RESET BEACONS
execute at @e[tag=BEACON] run setblock ~ ~ ~ minecraft:air

kill @e[type=marker]
kill @e[tag=portal]
kill @e[tag=pedestal]
kill @e[tag=BEACON]
clear @a #minecraft:wool
clear @a minecraft:shears
clear @a minecraft:brush
tag @a remove limbo
kill @e[type=armor_stand,tag=checkpoint]