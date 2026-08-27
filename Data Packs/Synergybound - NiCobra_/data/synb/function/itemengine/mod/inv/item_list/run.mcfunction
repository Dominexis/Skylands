# As : player
##

execute store result storage synb.d:tmp args.exec_pid int 1 run scoreboard players get @s synb.IEPlayer.Registered
scoreboard players set #overflow synb.Tmp.Arg 0
scoreboard players set #exec_i synb.Tmp.Arg 0
function synb:itemengine/mod/inv/item_list/_rec

execute if score #overflow synb.Tmp.Arg matches 1.. run scoreboard players add #overflow synb.Tmp.Arg 1
execute if score #overflow synb.Tmp.Arg matches 1.. store result storage synb.d:tmp args.ovf int 1 run scoreboard players get #overflow synb.Tmp.Arg
execute if score #overflow synb.Tmp.Arg matches 1.. run function synb:itemengine/mod/inv/item_list/_overflow with storage synb.d:tmp args