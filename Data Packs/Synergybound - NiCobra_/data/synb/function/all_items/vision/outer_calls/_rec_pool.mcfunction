scoreboard players operation #nb synb.Tmp.Expr = @s synb.IEItemCount.vision
scoreboard players operation #nb synb.Tmp.Expr *= num2 synb.Const
execute unless score #idx synb.Tmp.Arg <= #nb synb.Tmp.Expr run return 0
$execute unless data storage synb.d:pools item_pools.env_$(env).shop[$(idx)] run return 0

$data modify storage synb.d:tmp args.pool_item_id set from storage synb.d:pools item_pools.env_$(env).shop[$(idx)]
function synb:all_items/vision/outer_calls/_disp with storage synb.d:tmp args

scoreboard players add #idx synb.Tmp.Arg 1
execute store result storage synb.d:tmp args.idx int 1 run scoreboard players get #idx synb.Tmp.Arg
function synb:all_items/vision/outer_calls/_rec_pool with storage synb.d:tmp args