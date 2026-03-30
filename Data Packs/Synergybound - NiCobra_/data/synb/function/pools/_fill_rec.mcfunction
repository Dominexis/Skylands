# /!\ Uncompiled
# Args :
#   - env (macro)
#   - base_name (macro)
#   - pool_name (macro)
#   - pool_targets (tag arg)
#   - base_<?>_size (score arg)
#   - pool_<?>_size (score arg)
#   - nb_items (score arg)
##

# Stop condition
execute unless score #items_to_select synb.Tmp.Arg matches 1.. run return 1
$execute unless data storage synb.d:pools base.$(base_name)[0] run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] {"text":"[Synb Error] Pool base $(base_name) has no more items.","color":"red"}
$execute unless data storage synb.d:pools base.$(base_name)[0] run return 1

# Random selection
execute store result score #rand_idx_src synb.Tmp.Expr run random value 0..2147483646 synb.r:run_rng
$scoreboard players operation #rand_idx_src synb.Tmp.Expr %= #base_$(base_name)_size synb.Tmp.Arg
execute store result score #rand_idx_dest synb.Tmp.Expr run random value 0..2147483646 synb.r:run_rng
$execute unless score #pool_$(pool_name)_size synb.Tmp.Arg matches 1.. run scoreboard players set #rand_idx_dest synb.Tmp.Expr 1
$scoreboard players operation #rand_idx_dest synb.Tmp.Expr %= #pool_$(pool_name)_size synb.Tmp.Arg

# Call selection
$data modify storage synb.d:tmp args.env set value $(env)
$data modify storage synb.d:tmp args.base_name set value "$(base_name)"
$data modify storage synb.d:tmp args.pool_name set value "$(pool_name)"
execute store result storage synb.d:tmp args.rand_idx_src int 1 run scoreboard players get #rand_idx_src synb.Tmp.Expr
execute store result storage synb.d:tmp args.rand_idx_dest int 1 run scoreboard players get #rand_idx_dest synb.Tmp.Expr
function synb:pools/_select_item with storage synb.d:tmp args

# Recursion + sizes update
scoreboard players remove #items_to_select synb.Tmp.Arg 1
$scoreboard players add #pool_$(pool_name)_size synb.Tmp.Arg 1
$scoreboard players remove #base_$(base_name)_size synb.Tmp.Arg 1
$function synb:pools/_fill_rec {env:$(env),base_name:"$(base_name)",pool_name:"$(pool_name)"}