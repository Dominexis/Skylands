clear @s minecraft:trial_key[minecraft:custom_data~{inventory_item:{empty_inventory:true}}] 1
give @s minecraft:trial_key[minecraft:item_name="Slot Key",minecraft:consumable={animation:"brush",consume_seconds:0.5,has_consume_particles:false,sound:"minecraft:block.metal.step"},minecraft:max_stack_size=1,minecraft:custom_data={inventory_item:{empty_inventory:false}},minecraft:lore=["§7§oUse to unlock 1 inventory."]]

execute if predicate sanct:spell/empty_inventory_item/can_remake run return run function sanct:spell/buff/empty_inventory/inventory_item/remake
advancement revoke @s only sanct:spell/empty_inventory_item/remake