# As/At : player
# Args :
#   - item_id (storage)
##

execute store result storage synb.d:tmp args.exec_pid int 1 run scoreboard players get @s synb.IEPlayer.Registered

# >>> SPECIAL LOGIC : relic_clone
scoreboard players operation #rm_count synb.Tmp.Expr = @s synb.IEItemCount.relic_clone
scoreboard players operation #add_count synb.Tmp.Expr = @s synb.IEItemCount.relic_clone
data modify storage synb.d:tmp expr.item_id set from storage synb.d:tmp args.item_id
data modify storage synb.d:tmp args.inv_idx set value 0
execute if score #rm_count synb.Tmp.Expr matches 1.. run function synb:all_items/relic_clone/outer_calls/rec_rm_relic
data modify storage synb.d:tmp args.item_id set from storage synb.d:tmp expr.item_id
# <<<

function synb:itemengine/player/_add_item2 with storage synb.d:tmp args

# >>> SPECIAL LOGIC : relic_clone
execute if score #add_count synb.Tmp.Expr matches 1.. run function synb:all_items/relic_clone/outer_calls/rec_add_relic
# <<<

# Effects
effect give @s minecraft:blindness 1 0 true
effect give @s minecraft:nausea 5 0 true
playsound minecraft:item.trident.return player @a ~ ~ ~ 1 0.5
playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 1 0.7
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 50

# Triggers
function synb:itemengine/executor/run {func:"item_picked_up"}