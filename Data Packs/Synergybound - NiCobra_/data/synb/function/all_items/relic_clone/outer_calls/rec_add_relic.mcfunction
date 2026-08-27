execute unless score #add_count synb.Tmp.Expr matches 1.. run return 0
scoreboard players remove #add_count synb.Tmp.Expr 1
function synb:itemengine/player/_add_item2 with storage synb.d:tmp args
function synb:all_items/relic_clone/outer_calls/rec_add_relic