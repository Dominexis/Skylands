$data modify storage synb.d:tmp args.icon_item_id set from storage synb.d:itemengine players_inv[$(rm_pid)][$(inv_idx)]
function synb:itemengine/executor/get_icon with storage synb.d:tmp args
scoreboard players set #tier synb.Tmp.Expr -1
execute store result score #tier synb.Tmp.Expr run data get block 3328 50 -2304 Items[0].components.minecraft:custom_data.price_tier

execute if score #tier synb.Tmp.Expr matches 0 run function synb:utils/spawn_money {amount:1}
execute if score #tier synb.Tmp.Expr matches 1 run function synb:utils/spawn_money {amount:9}
execute if score #tier synb.Tmp.Expr matches 2 run function synb:utils/spawn_money {amount:11}
execute if score #tier synb.Tmp.Expr matches 3 run function synb:utils/spawn_money {amount:15}
execute if score #tier synb.Tmp.Expr matches 4 run function synb:utils/spawn_money {amount:25}
execute if score #tier synb.Tmp.Expr matches 5 run function synb:utils/spawn_money {amount:50}