# As : player
# At : [depends]
# Args :
#   - exec_layer (macro)
#   - exec_func (storage)
#   - exec_pid (storage)
#   - Undefined contexts
##

$execute store result storage synb.d:tmp args.exec_i int 1 run scoreboard players get executor$(exec_layer)_i synb.Tmp.Arg
scoreboard players set #res synb.Tmp.Expr 0
execute store result score #res synb.Tmp.Expr run function synb:itemengine/executor/_macro_get with storage synb.d:tmp args
$scoreboard players add executor$(exec_layer)_i synb.Tmp.Arg 1
$execute if score executor$(exec_layer)_i synb.Tmp.Arg matches 1001 run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] {"text":"[Synb Error] Max recursion for item executor.","color":"red"}
$execute if score executor$(exec_layer)_i synb.Tmp.Arg matches ..1000 unless score #res synb.Tmp.Expr matches 1 run function synb:itemengine/executor/_rec {exec_layer:$(exec_layer)}