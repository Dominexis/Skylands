# /!\ Uncompiled
# As/At : /
# Args :
#   - ind (macro)
#   - ind (score arg)
#   - text_array (storage arg)
##

$execute unless data storage synb.d:tmp args.text_array[$(ind)] run return 0
$execute if score #ind synb.Tmp.Arg matches 1.. run data modify storage synb.d:tmp args.text_array insert $(ind) value {"text":"\n"}

execute if score #ind synb.Tmp.Arg matches 1.. run scoreboard players add #ind synb.Tmp.Arg 1
scoreboard players add #ind synb.Tmp.Arg 1

execute store result storage synb.d:tmp args.ind int 1 run scoreboard players get #ind synb.Tmp.Arg
function synb:utils/_rec_insert_breaks with storage synb.d:tmp args