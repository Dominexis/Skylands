# As : player
# Args :
#   - exec_pid (macro)
#   - Undefined contexts
##

execute store result storage synb.d:tmp args.exec_i int 1 run scoreboard players get #exec_i synb.Tmp.Arg
scoreboard players set #cond synb.Tmp.Expr 0
execute store result score #cond synb.Tmp.Expr run function synb:itemengine/mod/inv/item_list/_macro_get with storage synb.d:tmp args
scoreboard players add #exec_i synb.Tmp.Arg 1
execute if score #exec_i synb.Tmp.Arg matches ..26 run scoreboard players set #cond synb.Tmp.Expr 0
execute if score #exec_i synb.Tmp.Arg matches 1001 run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] {"text":"[Synb Error] Max recursion for item inventory.","color":"red"}
execute if score #exec_i synb.Tmp.Arg matches ..1000 unless score #cond synb.Tmp.Expr matches 1 run function synb:itemengine/mod/inv/item_list/_rec