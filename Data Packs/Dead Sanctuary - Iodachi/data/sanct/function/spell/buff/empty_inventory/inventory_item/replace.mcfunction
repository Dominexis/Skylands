clear @s minecraft:trial_key[minecraft:custom_data~{inventory_item:{empty_inventory:false}}] 1
give @s minecraft:trial_key[minecraft:item_name="Slot Key",minecraft:consumable={animation:"brush",consume_seconds:0.5,has_consume_particles:false,sound:"minecraft:block.metal.step"},minecraft:max_stack_size=1,minecraft:custom_data={inventory_item:{empty_inventory:true}},minecraft:lore=["§8§o§mUse to unlock 1 inventory.","§7§oUse to get 1 random item.","","§9Modified by:"," §9⋅ §4§lDIMENSION BREAK"]]

execute if predicate sanct:spell/empty_inventory_item/can_replace run return run function sanct:spell/buff/empty_inventory/inventory_item/replace
advancement revoke @s only sanct:spell/empty_inventory_item/replace