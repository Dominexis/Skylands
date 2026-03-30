# As/At : /
# Args :
#   - pow (score)
#   - val (score
##

execute if score #pow synb.Tmp.Arg matches ..1 run return 0
scoreboard players operation #val synb.Tmp.Arg *= num2 synb.Const
scoreboard players remove #pow synb.Tmp.Arg 1
function synb:utils/rec_exponent