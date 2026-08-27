execute store result score #rand synb.Tmp.Expr run random value 0..2147483646 synb.r:run_rng
scoreboard players operation #prev_inv_size synb.Tmp.Expr = @s synb.IETotalItems
scoreboard players remove #prev_inv_size synb.Tmp.Expr 1
scoreboard players operation #prev_inv_size synb.Tmp.Expr -= @s synb.IEItemCount._hard_mode
scoreboard players operation #rand synb.Tmp.Expr %= #prev_inv_size synb.Tmp.Expr
scoreboard players add #rand synb.Tmp.Expr 1

# Lawsuit
execute if score #prev_inv_size synb.Tmp.Expr matches ..0 run scoreboard players set #rand synb.Tmp.Expr 0
execute if score #prev_inv_size synb.Tmp.Expr matches ..0 run playsound minecraft:entity.villager.hurt neutral @a ~ ~ ~ 1 0.8
execute if score #prev_inv_size synb.Tmp.Expr matches ..0 run function synb:elements/collectible/spawn {item_col_id:"_lawsuit",pool_name:"shop"}

execute store result storage synb.d:tmp args.rm_pid int 1 run scoreboard players get @s synb.IEPlayer.Registered
execute store result storage synb.d:tmp args.inv_idx int 1 run scoreboard players get #rand synb.Tmp.Expr
execute if score #prev_inv_size synb.Tmp.Expr matches 1.. run function synb:all_items/refund/_refund with storage synb.d:tmp args
function synb:itemengine/player/remove_item with storage synb.d:tmp args