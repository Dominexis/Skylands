#summon veils of bile that cannot be picked up
#each interaction at bile has its own score name and score
#when player clicks on interaction --> set interaction score to 1 --> delete item off ground
#give player bile --> delete interaction

#right click
#response 1b means itll give player hand feedback they they are hitting/clicking something 
#summon minecraft:interaction ~ ~ ~ {width:1,height:1,response:1b,Tags:["bile1"]}

#interaction is not the same score as given objective score

#set specific bile score when collected
scoreboard players set @s erictho_objective 1

#give bile
execute if score @s erictho_objective matches 1 run give @p acacia_button 1

#reset entity
execute if score @s erictho_objective matches 1 run data remove entity @s interaction

scoreboard players operation bile1 erictho_objective = @e[tag=bile1] erictho_objective
scoreboard players operation bile2 erictho_objective = @e[tag=bile2] erictho_objective
scoreboard players operation bile3 erictho_objective = @e[tag=bile1] erictho_objective
scoreboard players operation bile4 erictho_objective = @e[tag=bile2] erictho_objective
scoreboard players operation bile5 erictho_objective = @e[tag=bile1] erictho_objective
scoreboard players operation bile6 erictho_objective = @e[tag=bile2] erictho_objective


#kill interaction
execute if score @s erictho_objective matches 1 run kill @s