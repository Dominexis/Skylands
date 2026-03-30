
# effect
execute unless data storage pc:temp desc.real_item run return fail
execute unless data storage pc:temp desc.lore unless data storage pc:temp desc.real_item.components.minecraft:custom_data.pc.item_name run return fail

return 1