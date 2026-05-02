# Activates the fan, allowing it to blow the player upwards
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.fan_active 1
execute positioned -1784 224 -6400 run playsound block.beacon.power_select block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1 1.1
particle electric_spark -1784 224.5 -6400 0.55 0.55 0.55 0.5 40
particle minecraft:soul_fire_flame -1784 224.5 -6400 0.6 0.6 0.6 0.075 50
function celpel:components/blow_1