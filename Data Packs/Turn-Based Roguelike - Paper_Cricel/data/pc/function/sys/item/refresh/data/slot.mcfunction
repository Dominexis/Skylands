
# effect
summon minecraft:item_display ~ ~ ~ {UUID:[I;-2137326601,622018833,-1966253601,-104019560]}
$item replace entity 809afbf7-2513-4111-8acd-59dff9ccc998 contents from $(slot)
data modify storage pc:temp desc.real_item set from entity 809afbf7-2513-4111-8acd-59dff9ccc998 item
kill 809afbf7-2513-4111-8acd-59dff9ccc998
$data modify storage pc:temp desc.real_item_slot set value "$(slot)"