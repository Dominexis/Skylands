
# effect
data modify storage pc:temp range set from entity @s SelectedItem.components."minecraft:custom_data".pc
execute if data storage pc:temp {range:{category:"skill1"}} run data modify storage pc:temp range.category set value skill
execute if data storage pc:temp {range:{category:"skill2"}} run data modify storage pc:temp range.category set value skill
execute if data storage pc:temp {range:{category:"skill3"}} run data modify storage pc:temp range.category set value skill

function pc:sys/player/select/player/range/2 with storage pc:temp range

data remove storage pc:temp range