#as bile interaction 

#summon veils of bile that cannot be picked up
#each interaction at bile has its own score name and score
#when player clicks on interaction --> set interaction score to 1 --> delete item off ground
#give player bile --> delete interaction

#right click
#response 1b means itll give player hand feedback they they are hitting/clicking something 
#summon minecraft:interaction ~ ~ ~ {width:1,height:1,response:1b,Tags:["bile1"]}

#interaction is not the same score as given objective score

#set specific bile score when collected
scoreboard players set @s erictho.objective 1

#give bile
execute if score @s erictho.objective matches 1 run give @p[team=sl.player,distance=..100] acacia_button 1

#reset entity
execute if score @s erictho.objective matches 1 run data remove entity @s interaction

#make scores of entity same as scoreboard
scoreboard players operation erictho.bile1 erictho.objective = @e[tag=erictho.bile1,distance=..100] erictho.objective
scoreboard players operation erictho.bile2 erictho.objective = @e[tag=erictho.bile2,distance=..100] erictho.objective
scoreboard players operation erictho.bile3 erictho.objective = @e[tag=erictho.bile3,distance=..100] erictho.objective
scoreboard players operation erictho.bile4 erictho.objective = @e[tag=erictho.bile4,distance=..100] erictho.objective
scoreboard players operation erictho.bile5 erictho.objective = @e[tag=erictho.bile5,distance=..100] erictho.objective
scoreboard players operation erictho.bile6 erictho.objective = @e[tag=erictho.bile6,distance=..100] erictho.objective


#kill interaction
execute if score @s erictho.objective matches 1 run kill @s