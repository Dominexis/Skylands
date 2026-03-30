# As/At : indicator
##

tp @s ~ ~0.02 ~

scoreboard players remove @s synb.World.DmgIndLife 1
execute if score @s synb.World.DmgIndLife matches ..0 run kill @s

scoreboard players operation #scale synb.Tmp.Expr = @s synb.World.DmgIndLife
execute if score #scale synb.Tmp.Expr matches 15.. run scoreboard players set #scale synb.Tmp.Expr 15
execute store result storage synb.d:tmp args.scale double 0.1 run scoreboard players get #scale synb.Tmp.Expr
function synb:world/_tick_indicator2 with storage synb.d:tmp args