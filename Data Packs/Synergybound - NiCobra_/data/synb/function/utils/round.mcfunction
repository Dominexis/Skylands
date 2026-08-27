# As/At : /
# Args :
#   - val (score)
##

# tellraw @s [{text:"in: "},{score:{"name":"#val",objective:"synb.Tmp.Arg"}}]
scoreboard players operation #decimal synb.Tmp.Expr = #val synb.Tmp.Arg
scoreboard players operation #val synb.Tmp.Arg /= num10 synb.Const
scoreboard players operation #val synb.Tmp.Arg *= num10 synb.Const
scoreboard players operation #decimal synb.Tmp.Expr -= #val synb.Tmp.Arg
scoreboard players operation #val synb.Tmp.Arg /= num10 synb.Const
execute if score #decimal synb.Tmp.Expr matches 6.. run scoreboard players add #val synb.Tmp.Arg 1
# tellraw @s [{text:"out: "},{score:{"name":"#val",objective:"synb.Tmp.Arg"}}]