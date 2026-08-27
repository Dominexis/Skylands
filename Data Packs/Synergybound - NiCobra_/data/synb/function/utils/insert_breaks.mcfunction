# As/At : /
# Args :
#   - text_array (storage arg)
##

scoreboard players set #ind synb.Tmp.Arg 0
data modify storage synb.d:tmp args.ind set value 0
function synb:utils/_rec_insert_breaks with storage synb.d:tmp args