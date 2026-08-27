# Plays the blow sound effect and prevents it from happening again until the player loses levitation
scoreboard players set @s celpel.blow_played 1
execute at @s run playsound entity.breeze.wind_burst block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1 0.75